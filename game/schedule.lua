require "game.scheduleFunc"

local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 1.0, false)
cj.TriggerAddAction(startTrigger, function()
    cj.DisableTrigger(cj.GetTriggeringTrigger())
    cj.DestroyTrigger(cj.GetTriggeringTrigger())
    --[[
        这里开始游戏正式开始了
        发挥你的想象力吧~
    ]]
    -- 第一玩家选择模式
    hmsg.echo("第一个玩家正在选择（游戏模式）", 10)
    hdialog.create(
        nil,
        {
            title = "选择游戏模式",
            buttons = {
                "无尽合作模式",
                "个人坑友模式",
            }
        },
        function(btnIdx)
            hmsg.echo("选择了" .. btnIdx)
            if (btnIdx == "无尽合作模式") then
                hmsg.echo("四个玩家独立出怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除伟“大精灵”的生命，直至游戏失败")
                cj.FogEnable(false)
                cj.FogMaskEnable(false)
                -- 大精灵
                local bigElf = hunit.create({
                    whichPlayer = game.ALLY_PLAYER,
                    unitId = game.thisUnits["大精灵"].unitID,
                    qty = 1,
                    x = 0,
                    y = 0,
                })
                hevent.onDead(bigElf, function()
                    hmsg.echo("不！“大精灵”GG了，结束啦~我们的守护")
                    htime.setTimeout(5, "退出倒计时", function()
                        for i = 1, hplayer.qty_max, 1 do
                            hplayer.defeat(hplayer.players[i], "再见~")
                        end
                    end)
                end)
                cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                -- 商店
                hunit.create({
                    whichPlayer = game.ALLY_PLAYER,
                    unitId = game.shops["猎人之店"].unitID,
                    qty = 1,
                    x = -256,
                    y = 256,
                    isInvulnerable = true,
                })
                -- 构建出怪区域
                for k, v in ipairs(game.pathPoint) do
                    for i, p in ipairs(v) do
                        local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                        local tg = cj.CreateTrigger()
                        bj.TriggerRegisterEnterRectSimple(tg, r)
                        cj.TriggerAddCondition(tg, cj.Condition(function()
                            return his.enemy(cj.GetTriggerUnit(), game.ALLY_PLAYER)
                        end))
                        cj.TriggerAddAction(tg, function()
                            if (i == #v) then
                                -- 最后一个
                                local uVal = cj.GetUnitUserData(cj.GetTriggerUnit())
                                if (uVal >= hplayer.qty_current - 1) then
                                    heffect.toUnit(
                                        "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                        cj.GetTriggerUnit(),
                                        1
                                    )
                                    hunit.del(cj.GetTriggerUnit(), 0)
                                    if (his.alive(bigElf)) then
                                        heffect.toUnit(
                                            "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                            bigElf,
                                            1
                                        )
                                        hunit.subCurLife(bigElf, game.rule.hz.wave)
                                        cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                        local ttg = htextTag.create2Unit(bigElf, "-" .. game.rule.hz.wave, 10, "e04240", 0, 3)
                                        htextTag.style(ttg, "scale", 0, 10)
                                    end
                                else
                                    cj.SetUnitUserData(cj.GetTriggerUnit(), uVal + 1)
                                    heffect.bindUnit(
                                        "Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",
                                        cj.GetTriggerUnit(),
                                        "origin",
                                        2
                                    )
                                    local next = getNextRect(k)
                                    if (next ~= -1) then
                                        cj.SetUnitPosition(cj.GetTriggerUnit(), game.pathPoint[next][1][1], game.pathPoint[next][1][2])
                                    end
                                end
                            else
                                -- 前段路途
                                cj.IssuePointOrderById(cj.GetTriggerUnit(), 851986, v[i + 1][1], v[i + 1][2])
                            end
                        end)
                    end
                end
                enemyGenHZ(1)
                hleaderBoard.create('hz', 1, function(bl, i)
                    local p = hplayer.players[i]
                    local v = math.floor(hplayer.getDamage(p) * 0.1)
                    cj.LeaderboardSetLabel(bl, "无尽合作" .. game.rule.hz.wave .. "波")
                    cj.LeaderboardAddItem(bl, cj.GetPlayerName(p), v, p)
                end)
            elseif (btnIdx == "个人坑友模式") then
                hmsg.echo("四个玩家独立出怪，击杀敌人时会在你的下家（顺时针方向）创建与兵塔和你的等级相关的士兵攻击该玩家，打不过玩家的兵塔会被扣血直至出局")
                cj.FogEnable(true)
                cj.FogMaskEnable(true)
                -- 商店
                hunit.create({
                    whichPlayer = game.ALLY_PLAYER,
                    unitId = game.shops["猎人之店"].unitID,
                    qty = 1,
                    x = -256,
                    y = 256,
                    isInvulnerable = true,
                })
                -- 构建出怪区域
                for k, v in ipairs(game.pathPoint) do
                    for i, p in ipairs(v) do
                        local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                        local tg = cj.CreateTrigger()
                        bj.TriggerRegisterEnterRectSimple(tg, r)
                        cj.TriggerAddCondition(tg, cj.Condition(function()
                            return his.enemy(cj.GetTriggerUnit(), game.ALLY_PLAYER)
                        end))
                        cj.TriggerAddAction(tg, function()
                            if (i == #v) then
                                -- 最后一格,返回起点
                                if (his.alive(game.playerTower[k])) then
                                    heffect.toUnit(
                                        "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                        game.playerTower[k],
                                        1
                                    )
                                    hunit.subCurLife(
                                        game.playerTower[k],
                                        game.rule.dk.level[hplayer.index(cj.GetOwningPlayer(cj.GetTriggerUnit()))]
                                    )
                                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                    local ttg = htextTag.create2Unit(game.playerTower[k], "-" .. game.rule.hz.wave, 10, "e04240", 0, 3)
                                    htextTag.style(ttg, "scale", 0, 10)
                                    cj.SetUnitPosition(cj.GetTriggerUnit(), v[1][1], v[1][2])
                                else
                                    hunit.del(cj.GetTriggerUnit(), 0)
                                end
                                --[[
                                local next = getNextRect(k)
                                if (next ~= -1) then
                                    local u = hemeny.create({
                                        unitId = summonID, -- 这里根据该玩家的兵塔的类型召唤
                                        qty = 1,
                                        x = game.pathPoint[next][1][1],
                                        y = game.pathPoint[next][1][2],
                                    })
                                    cj.SetUnitUserData(u, 996)
                                    cj.SetUnitPathing(u, false)
                                end
                                ]]
                            else
                                -- 前段路途
                                cj.IssuePointOrderById(cj.GetTriggerUnit(), 851986, v[i + 1][1], v[i + 1][2])
                            end
                        end)
                    end
                end
                enemyGenDK(30)
            end
            -- 基本信使
            for k, v in pairs(game.courierPoint) do
                createMyCourier(k, game.courier["雪鹰"].unitID)
            end
            -- 基本兵塔
            for k, v in pairs(game.towerPoint) do
                createMyTower(k, game.towers["人类·农民"].unitID)
            end
        end
    )

end)