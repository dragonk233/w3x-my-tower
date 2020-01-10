require "game.scheduleFunc"

game.TRIGGER_DEMOVE = cj.CreateTrigger()
cj.TriggerAddAction(
    game.TRIGGER_DEMOVE,
    function()
        if (cj.GetIssuedOrderId() == 851971 or cj.GetIssuedOrderId() == 851986) then
            local index = hplayer.index(cj.GetOwningPlayer(cj.GetTriggerUnit()))
            cj.SetUnitPosition(cj.GetTriggerUnit(), game.towerPoint[index][1], game.towerPoint[index][2])
            cj.IssuePointOrderById(
                cj.GetTriggerUnit(),
                851983,
                cj.GetUnitX(cj.GetTriggerUnit()),
                cj.GetUnitY(cj.GetTriggerUnit())
            )
        end
    end
)

local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 1.0, false)
cj.TriggerAddAction(
    startTrigger,
    function()
        cj.DisableTrigger(cj.GetTriggeringTrigger())
        cj.DestroyTrigger(cj.GetTriggeringTrigger())
        --[[
            这里开始游戏正式开始了
            发挥你的想象力吧~
        ]]
        cj.FogEnable(false)
        cj.FogMaskEnable(false)
        hsound.bgmStop(nil)
        --设置三围基础
        hattr.setThreeBuff(
            {
                str = {
                    life = 10,
                    attack_white = 0.11,
                    attack_green = 0.11,
                    toughness = 0.20
                },
                agi = {
                    attack_white = 0.4,
                    attack_speed = 0.05,
                    avoid = 0.05
                },
                int = {
                    attack_green = 0.4,
                    resistance = 0.05
                }
            }
        )
        local btns = {
            "轻松" .. game.rule.yb.waveEnd .. "波",
            "死机挑战"
        }
        if (hplayer.qty_current <= 1) then
            table.insert(btns, "有趣对抗(AI模式)")
        else
            table.insert(btns, "有趣对抗")
        end
        -- 第一玩家选择模式
        hmsg.echo("第一个玩家正在选择（游戏模式）", 10)
        hdialog.create(
            nil,
            {
                title = "选择游戏模式",
                buttons = btns
            },
            function(btnIdx)
                hmsg.echo("选择了" .. btnIdx)
                if (btnIdx == "轻松" .. game.rule.yb.waveEnd .. "波") then
                    game.rule.cur = "yb"
                    hmsg.echo("|cffffff00各玩家合力打怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除“大精灵”的生命，坚持100波胜利|r")
                    hsound.bgm(cg.gg_snd_bgm_hz, nil)
                    -- 大精灵
                    local bigElf =
                        hunit.create(
                        {
                            whichPlayer = game.ALLY_PLAYER,
                            unitId = game.thisUnits["大精灵"].UNIT_ID,
                            qty = 1,
                            x = 0,
                            y = 0
                        }
                    )
                    hevent.onDead(
                        bigElf,
                        function()
                            game.runing = false
                            hmsg.echo("不！“大精灵”GG了，结束啦~我们的守护")
                            htime.setTimeout(
                                5.00,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delTimer(t)
                                    for i = 1, hplayer.qty_max, 1 do
                                        hplayer.defeat(hplayer.players[i], "再见~")
                                    end
                                end,
                                "退出倒计时"
                            )
                        end
                    )
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    -- 构建出怪区域
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    if (his.enemyPlayer(cj.GetTriggerUnit(), game.ALLY_PLAYER)) then
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
                                                    hunit.subCurLife(bigElf, game.rule.yb.wave)
                                                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                                    htextTag.style(
                                                        htextTag.create2Unit(
                                                            bigElf,
                                                            "-" ..
                                                                game.rule.yb.wave ..
                                                                    " " ..
                                                                        game.bigElfTips[
                                                                            cj.GetRandomInt(1, #game.bigElfTips)
                                                                        ],
                                                            10.00,
                                                            "ff0000",
                                                            1,
                                                            1.1,
                                                            50.00
                                                        ),
                                                        "scale",
                                                        0,
                                                        0.05
                                                    )
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
                                                    cj.SetUnitPosition(
                                                        cj.GetTriggerUnit(),
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                end
                                            end
                                        else
                                            -- 前段路途
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenYB(10)
                    hleaderBoard.create(
                        "yb",
                        1,
                        function(bl, i)
                            local p = hplayer.players[i]
                            local v = math.floor(hplayer.getDamage(p) * 0.1)
                            local bigElfLife = "GG"
                            if (his.alive(bigElf)) then
                                bigElfLife =
                                    hColor.white(math.floor(hunit.getCurLife(bigElf))) ..
                                    "/" .. math.floor(hunit.getMaxLife(bigElf))
                            end
                            hleaderBoard.setTitle(bl, "百波战力榜[" .. game.rule.yb.wave .. "波][精灵 " .. bigElfLife .. "]")
                            hleaderBoard.setPlayerData(bl, p, v)
                        end
                    )
                elseif (btnIdx == "死机挑战") then
                    game.rule.cur = "hz"
                    hmsg.echo("|cffffff00各玩家合力打怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除“光辉城主”的生命，玩到死机为止！|r")
                    hsound.bgm(cg.gg_snd_bgm_hz, nil)
                    local bigElf =
                        hunit.create(
                        {
                            whichPlayer = game.ALLY_PLAYER,
                            unitId = game.thisUnits["光辉城主"].UNIT_ID,
                            qty = 1,
                            x = 0,
                            y = 0
                        }
                    )
                    hevent.onDead(
                        bigElf,
                        function()
                            game.runing = false
                            hmsg.echo("不！“光辉城主”GG了，还没死机就结束啦~我们的守护")
                            htime.setTimeout(
                                5,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delTimer(t)
                                    for i = 1, hplayer.qty_max, 1 do
                                        hplayer.defeat(hplayer.players[i], "再见~")
                                    end
                                end,
                                "退出倒计时"
                            )
                        end
                    )
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    -- 构建出怪区域
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    if (his.enemyPlayer(cj.GetTriggerUnit(), game.ALLY_PLAYER)) then
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
                                                    htextTag.style(
                                                        htextTag.create2Unit(
                                                            bigElf,
                                                            "-" ..
                                                                game.rule.hz.wave ..
                                                                    " " ..
                                                                        game.bigElfTips[
                                                                            cj.GetRandomInt(1, #game.bigElfTips)
                                                                        ],
                                                            10.00,
                                                            "ff0000",
                                                            1,
                                                            1.1,
                                                            50.00
                                                        ),
                                                        "scale",
                                                        0,
                                                        0.05
                                                    )
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
                                                    cj.SetUnitPosition(
                                                        cj.GetTriggerUnit(),
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                end
                                            end
                                        else
                                            -- 前段路途
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenHZ(10)
                    hleaderBoard.create(
                        "hz",
                        1,
                        function(bl, i)
                            local p = hplayer.players[i]
                            local v = math.floor(hplayer.getDamage(p) * 0.1)
                            local bigElfLife = "GG"
                            if (his.alive(bigElf)) then
                                bigElfLife =
                                    hColor.white(math.floor(hunit.getCurLife(bigElf))) ..
                                    "/" .. math.floor(hunit.getMaxLife(bigElf))
                            end
                            hleaderBoard.setTitle(bl, "无尽战力榜[" .. game.rule.hz.wave .. "波][城主 " .. bigElfLife .. "]")
                            hleaderBoard.setPlayerData(bl, p, v)
                        end
                    )
                elseif (btnIdx == "有趣对抗" or "有趣对抗(AI模式)") then
                    game.rule.cur = "dk"
                    if (btnIdx == "有趣对抗(AI模式)") then
                        game.rule.dk.ai = true
                        hmsg.echo("|cffffff00各玩家独立出怪升级，阶段升级时会在你的下家（顺时针方向）创建与兵塔相关的士兵攻击该玩家，对抗不过的玩家会被扣血直至出局[AI模式]|r")
                    else
                        hmsg.echo("|cffffff00各玩家独立出怪升级，阶段升级时会在你的下家（顺时针方向）创建与兵塔相关的士兵攻击该玩家，对抗不过的玩家会被扣血直至出局|r")
                    end
                    hsound.bgm(cg.gg_snd_bgm_dk, nil)
                    -- 构建出怪区域
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    local u = cj.GetTriggerUnit()
                                    if (his.enemyPlayer(u, game.ALLY_PLAYER)) then
                                        local playerIndex = hunit.getUserData(u)
                                        if (i == #v) then
                                            local slk = hunit.getSlk(u)
                                            local type = slk.TYPE
                                            -- 最后一格,前往下一区域
                                            local next = getNextRect(k)
                                            if (next ~= -1) then
                                                if (type == "tower_shadow") then
                                                    if (next == playerIndex) then
                                                        hunit.del(u, 2)
                                                        hsound.sound(cg.gg_snd_jsws)
                                                        hmsg.echo(
                                                            hColor.green(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                                                hColor.yellow("实现了一轮完美进攻！！牛逼！！！")
                                                        )
                                                    else
                                                        cj.SetUnitPosition(
                                                            u,
                                                            game.pathPoint[next][1][1],
                                                            game.pathPoint[next][1][2]
                                                        )
                                                        local hunt = game.rule.dk.wave[playerIndex]
                                                        if (hunt >= hunit.getCurLife(game.playerTower[k])) then
                                                            hunit.kill(game.playerTower[k], 0)
                                                            hmsg.echo(
                                                                hColor.sky(cj.GetPlayerName(hplayer.players[k])) ..
                                                                    "被" ..
                                                                        hColor.sky(
                                                                            cj.GetPlayerName(
                                                                                hplayer.players[playerIndex]
                                                                            )
                                                                        ) ..
                                                                            "的" ..
                                                                                hColor.yellow(slk.Name) .. "进攻，直接干翻了~"
                                                            )
                                                            game.playerTower[k] = nil
                                                            hplayer.defeat(hplayer.players[k], "战败~")
                                                        else
                                                            hunit.subCurLife(game.playerTower[k], hunt)
                                                            hmsg.echo(
                                                                hColor.sky(cj.GetPlayerName(hplayer.players[k])) ..
                                                                    "被" ..
                                                                        hColor.sky(
                                                                            cj.GetPlayerName(
                                                                                hplayer.players[playerIndex]
                                                                            )
                                                                        ) ..
                                                                            "的" ..
                                                                                hColor.yellow(slk.Name) ..
                                                                                    "进攻，扣了" .. hColor.red(hunt) .. "血"
                                                            )
                                                            heffect.toUnit(
                                                                "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                                game.playerTower[k],
                                                                1
                                                            )
                                                            htextTag.style(
                                                                htextTag.create2Unit(
                                                                    game.playerTower[k],
                                                                    "-" .. hunt,
                                                                    10.00,
                                                                    "ff0000",
                                                                    1,
                                                                    1.1,
                                                                    50.00
                                                                ),
                                                                "scale",
                                                                0,
                                                                0.05
                                                            )
                                                        end
                                                    end
                                                else
                                                    cj.SetUnitPosition(
                                                        u,
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                end
                                            end
                                        else
                                            -- 前段路途
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenDK(30)
                    hleaderBoard.create(
                        "dk",
                        1,
                        function(bl, i)
                            local p = hplayer.players[i]
                            local v = game.rule.dk.wave[i]
                            hleaderBoard.setTitle(bl, "有趣对抗战绩榜")
                            hleaderBoard.setPlayerData(bl, p, v)
                        end
                    )
                end
                -- 基本信使
                for k, v in pairs(game.courierPoint) do
                    local u
                    if (game.rule.dk.ai == true and his.playing(hplayer.players[k]) == false) then
                        u = createMyCourier(k, game.courier["涅磐火凤凰"].UNIT_ID)
                        cj.SetPlayerName(hplayer.players[k], "AI#" .. k)
                    else
                        u = createMyCourier(k, game.courier["呆萌的青蛙"].UNIT_ID)
                        if (u ~= nil and hdzapi.hasMallItem(hplayer.players[k], "phoenix") == true) then
                            hitem.create(
                                {
                                    itemId = game.courierItem["涅磐火凤凰"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                        end
                        if (u ~= nil and hdzapi.hasMallItem(hplayer.players[k], "icemon") == true) then
                            hitem.create(
                                {
                                    itemId = game.courierItem["冰戟剑灵"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                        end
                        if
                            (u ~= nil and
                                (hdzapi.hasMallItem(hplayer.players[k], "tzgold") == true or
                                    hdzapi.hasMallItem(hplayer.players[k], "tzdark") == true or
                                    hdzapi.hasMallItem(hplayer.players[k], "tzboold") == true or
                                    hdzapi.hasMallItem(hplayer.players[k], "tzdragon") == true or
                                    hdzapi.hasMallItem(hplayer.players[k], "tzghost") == true))
                         then
                            hitem.create(
                                {
                                    itemId = game.effectModelItem["超次元套装礼包"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                        end
                    end
                end
                -- 基本兵塔
                for k, v in pairs(game.towerPoint) do
                    createMyTower(k, game.towers["人类·农民_1"].UNIT_ID)
                end
                -- 商店
                hunit.create(
                    {
                        whichPlayer = game.ALLY_PLAYER,
                        unitId = game.shops["猎人之店"].UNIT_ID,
                        qty = 1,
                        x = -256,
                        y = 256
                    }
                )
                hunit.create(
                    {
                        whichPlayer = game.ALLY_PLAYER,
                        unitId = game.shops["信使之笼"].UNIT_ID,
                        qty = 1,
                        x = 256,
                        y = 256
                    }
                )
                --创建多面板
                hmultiBoard.create(
                    "player",
                    0.75,
                    function(mb, curPi)
                        --拼凑多面板数据，二维数组，行列模式
                        hmultiBoard.setTitle(mb, "玩家兵塔属性列表，地上怪物：" .. game.currentMon .. "只")
                        --开始当然是title了
                        local data = {
                            {
                                {value = "狼人", icon = "ReplaceableTextures\\CommandButtons\\BTNRiderlessHorse.blp"},
                                {value = "兵塔", icon = "ReplaceableTextures\\CommandButtons\\BTNHumanBarracks.blp"},
                                {value = "等级", icon = "ReplaceableTextures\\CommandButtons\\BTNAltarOfKings.blp"},
                                {value = "天赋", icon = "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention.blp"},
                                {value = "物攻", icon = "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp"},
                                {value = "魔攻", icon = "ReplaceableTextures\\CommandButtons\\BTNArcaniteMelee.blp"},
                                {
                                    value = "攻速",
                                    icon = "ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyStrength.blp"
                                },
                                {
                                    value = "物爆",
                                    icon = "ReplaceableTextures\\CommandButtons\\BTNSpiritWalkerMasterTraining.blp"
                                },
                                {value = "魔爆", icon = "ReplaceableTextures\\CommandButtons\\BTNPriestAdept.blp"},
                                {value = "增幅", icon = "ReplaceableTextures\\CommandButtons\\BTNControlMagic.blp"}
                            }
                        }
                        --然后是form
                        for pi = 1, hplayer.qty_max, 1 do
                            local p = hplayer.players[pi]
                            if (his.playing(p) or game.rule.dk.ai == true) then
                                local tower = game.playerTower[pi]
                                local avatar = hunit.getAvatar(tower)
                                local name = "[" .. game.playerTowerPower[pi] .. "]" .. hunit.getName(tower)
                                local attack_white = math.floor(hattr.get(tower, "attack_white"))
                                local attack_green = math.floor(hattr.get(tower, "attack_green"))
                                local attack_speed = math.round(hattr.get(tower, "attack_speed")) .. "%"
                                local knocking =
                                    math.floor(hattr.get(tower, "knocking_odds")) ..
                                    "%击出" .. math.floor(100 + hattr.get(tower, "knocking")) .. "%伤害"
                                local violence =
                                    math.floor(hattr.get(tower, "violence_odds")) ..
                                    "%击出" .. math.floor(100 + hattr.get(tower, "violence")) .. "%伤害"
                                local hunt_amplitude = math.round(hattr.get(tower, "hunt_amplitude")) .. "%"
                                table.insert(
                                    data,
                                    {
                                        {value = cj.GetPlayerName(p), icon = nil},
                                        {value = name, icon = avatar},
                                        {value = "Lv." .. hhero.getCurLevel(tower), icon = nil},
                                        {value = game.playerTowerLevel[pi], icon = nil},
                                        {value = attack_white, icon = nil},
                                        {value = attack_green, icon = nil},
                                        {value = attack_speed, icon = nil},
                                        {value = knocking, icon = nil},
                                        {value = violence, icon = nil},
                                        {value = hunt_amplitude, icon = nil}
                                    }
                                )
                            end
                        end
                        return data
                    end
                )
            end
        )
    end
)
