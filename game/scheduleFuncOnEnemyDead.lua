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
    local maxLevel = 0
    if (game.rule.cur == "yb") then
        maxLevel = math.floor(game.rule.yb.wave * 0.15)
    elseif (game.rule.cur == "hz") then
        maxLevel = math.floor(game.rule.hz.wave * 0.1)
    elseif (game.rule.cur == "dk" and killer ~= nil) then
        maxLevel = math.floor(game.rule.dk.wave[hplayer.index(cj.GetOwningPlayer(killer))] * 0.1)
    end
    if (maxLevel < 1) then
        maxLevel = 1
    elseif (maxLevel > 10) then
        maxLevel = 10
    end
    local level = cj.GetRandomInt(1, maxLevel)
    if (cj.GetRandomInt(1, 40) == 21) then
        -- 掉落蓝技能书
        if (#game.thisOptionAbilityItem["blue"][level] > 0) then
            local itId = hSys.randTable(game.thisOptionAbilityItem["blue"][level]).ITEM_ID
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
    if (cj.GetRandomInt(1, 80) == 42) then
        -- 掉落黄技能书
        if (#game.thisOptionAbilityItem["yellow"][level] > 0) then
            local itId = hSys.randTable(game.thisOptionAbilityItem["yellow"][level]).ITEM_ID
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
    if (cj.GetRandomInt(1, 250) == 119) then
        -- 掉落紫技能书
        if (#game.thisOptionAbilityItem["purple"][level] > 0) then
            local itId = hSys.randTable(game.thisOptionAbilityItem["purple"][level]).ITEM_ID
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
    if (cj.GetRandomInt(1, 25 - maxLevel) == 2) then
        -- 掉落兵塔
        local tpow = {E = 1}
        if (level == 1) then
            tpow = {E = 1}
        elseif (level == 2) then
            tpow = {E = 7, D = 3}
        elseif (level == 3) then
            tpow = {E = 4, D = 6, C = 1}
        elseif (level == 4) then
            tpow = {E = 3, D = 6, C = 2, B = 1}
        elseif (level == 5) then
            tpow = {D = 4, C = 6, B = 1}
        elseif (level == 6) then
            tpow = {D = 6, C = 16, B = 4, A = 1}
        elseif (level == 7) then
            tpow = {C = 10, B = 10, A = 1}
        elseif (level == 8) then
            tpow = {C = 9, B = 27, A = 3, S = 1}
        elseif (level == 9) then
            tpow = {B = 10, A = 8, S = 2, SS = 1}
        elseif (level == 10) then
            tpow = {A = 15, S = 30, SS = 5, SSS = 1}
        end
        local targetTPows = {}
        for k, v in pairs(tpow) do
            for i = 1, v, 1 do
                table.insert(targetTPows, k)
            end
        end
        local targetTPow = targetTPows[cj.GetRandomInt(1, #targetTPows)]
        if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
            local rand = hSys.randTable(game.thisOptionTowerPowerItem[targetTPow])
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
        haward.forGroupExp(u, 25 * game.rule.hz.wave)
    end
    deadAward(hevent.getTriggerUnit(), u)
end

-- 敌军死亡HZ
enemyDeadHZ = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        haward.forGroupExp(u, 20 * game.rule.hz.wave)
    end
    deadAward(hevent.getTriggerUnit(), u)
end

-- 敌军死亡DK
enemyDeadDK = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 20 * game.rule.dk.wave[pi]
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
