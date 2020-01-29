require "game.scheduleFuncEnemyGenShadow"

-- 死亡的触发奖励
enemyDeadAward = function(triggerUnit, killer)
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
    if (cj.GetRandomInt(1, 25) == 13 and curWave >= 2) then
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
    if (cj.GetRandomInt(1, 45) == 27 and curWave >= 7) then
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
    if (cj.GetRandomInt(1, 90) == 46 and curWave >= 19) then
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
    if (cj.GetRandomInt(1, 20) == 9) then
        -- 掉落兵塔
        local targetTPow = getTowerPowLevel(curWave)
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
enemyDeadYB = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forGroupExp(evtData.killer, 30 * game.rule.yb.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end

-- 敌军死亡HZ
enemyDeadHZ = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forGroupExp(evtData.killer, 25 * game.rule.hz.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end

-- 敌军死亡DK
enemyDeadDK = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 25 * game.rule.dk.wave[pi]
        local gold = 3 * game.rule.dk.wave[pi]
        haward.forGroup(u, exp, gold, 0)
        game.rule.dk.playerQty[pi] = game.rule.dk.playerQty[pi] + 1
        if (game.rule.dk.playerQty[pi] >= game.rule.dk.perWaveQty) then
            game.rule.dk.playerQty[pi] = 0
            game.rule.dk.wave[pi] = game.rule.dk.wave[pi] + 1
            game.rule.dk.monLife[pi] = game.rule.dk.monLife[pi] + game.rule.dk.monLifeInc
            game.rule.dk.mon[pi] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            --奖励的东东
            if (math.fmod(game.rule.dk.wave[pi], 10) == 0) then
                awardGenForOne(game.rule.dk.wave[pi], pi)
            end
            --我的兵塔，进攻！
            towerShadowGen(pi)
        end
    end
    local ui = game.rule.dk.monData[cj.GetTriggerUnit()].pathIndex
    game.rule.dk.monLimit[ui] = game.rule.dk.monLimit[ui] - 1
    enemyDeadAward(evtData.triggerUnit, u)
end
