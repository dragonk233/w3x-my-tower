-- 死亡的触发奖励
deadAward = function(triggerUnit, killer)
    local x = cj.GetUnitX(triggerUnit)
    local y = cj.GetUnitY(triggerUnit)
    -- 坟头草
    if (cj.GetRandomInt(1, 15) == 13) then
        htime.setTimeout(
            cj.GetRandomReal(8, 25),
            function()
                hunit.create(
                    {
                        whichPlayer = hplayer.player_passive,
                        unitId = game.thisUnits["河草"].UNIT_ID,
                        qty = 1,
                        x = x,
                        y = y,
                        during = cj.GetRandomReal(20, 45)
                    }
                )
            end
        )
    end
    hunit.del(triggerUnit, 10)
    --curWave
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk" and killer ~= nil) then
        curWave = game.rule.dk.wave[hplayer.index(cj.GetOwningPlayer(killer))]
    end
    --
    if (cj.GetRandomInt(1, 35) == 18 and curWave >= 3) then
        -- 掉落蓝技能书
        local tarBLv = getBookPowLevel(curWave)
        if (#game.thisOptionAbilityItem["blue"][tarBLv] > 0) then
            local itId = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID
            hitem.create(
                {
                    itemId = itId,
                    x = x,
                    y = y,
                    during = 60
                }
            )
        end
    end
    if (cj.GetRandomInt(1, 60) == 33 and curWave >= 10) then
        -- 掉落黄技能书
        local tarBLv = getBookPowLevel(curWave)
        if (#game.thisOptionAbilityItem["yellow"][tarBLv] > 0) then
            local itId = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID
            hitem.create(
                {
                    itemId = itId,
                    x = x,
                    y = y,
                    during = 60
                }
            )
        end
    end
    if (cj.GetRandomInt(1, 150) == 77 and curWave >= 30) then
        -- 掉落紫技能书
        local tarBLv = getBookPowLevel(curWave)
        if (#game.thisOptionAbilityItem["purple"][tarBLv] > 0) then
            local itId = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID
            hitem.create(
                {
                    itemId = itId,
                    x = x,
                    y = y,
                    during = 60
                }
            )
        end
    end
    --
    if (cj.GetRandomInt(1, 30) == 14) then
        -- 掉落兵塔
        local tarBLv = getTowerPowLevel(curWave)
        if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
            local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
            hitem.create(
                {
                    itemId = rand.ITEM_ID,
                    x = x,
                    y = y,
                    during = 120
                }
            )
        end
    end
end

-- 敌军死亡YB
enemyDeadYB = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        haward.forGroupExp(u, 35 * game.rule.yb.wave)
    end
    deadAward(hevent.getTriggerUnit(), u)
end

-- 敌军死亡HZ
enemyDeadHZ = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        haward.forGroupExp(u, 30 * game.rule.hz.wave)
    end
    deadAward(hevent.getTriggerUnit(), u)
end

-- 敌军死亡DK
enemyDeadDK = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 30 * game.rule.dk.wave[pi]
        local gold = 3 * game.rule.dk.wave[pi]
        haward.forGroup(u, exp, gold, 0)
        game.rule.dk.playerQty[pi] = game.rule.dk.playerQty[pi] + 1
        if (game.rule.dk.playerQty[pi] >= game.rule.dk.perWaveQty) then
            game.rule.dk.playerQty[pi] = 0
            game.rule.dk.wave[pi] = game.rule.dk.wave[pi] + 1
            game.rule.dk.mon[pi] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            hmsg.echo(
                cj.GetPlayerName(hplayer.players[pi]) .. "达到了|cffffff00第" .. game.rule.dk.wave[pi] .. "级|r，其他人小心啦~"
            )
        end
    end
    local ui = game.rule.dk.monData[cj.GetTriggerUnit()].pathIndex
    game.rule.dk.monLimit[ui] = game.rule.dk.monLimit[ui] - 1
    deadAward(hevent.getTriggerUnit(), u)
end
