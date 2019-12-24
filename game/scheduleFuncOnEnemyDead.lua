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
    local maxLevel = 0
    if (game.rule.cur == "yb" or game.rule.cur == "hz") then
        maxLevel = math.floor(game.rule.hz.wave * 0.1)
    elseif (game.rule.cur == "dk" and killer ~= nil) then
        maxLevel = math.floor(game.rule.dk.wave[hplayer.index(cj.GetOwningPlayer(killer))] * 0.1)
    end
    if (maxLevel < 1) then
        maxLevel = 1
    elseif (maxLevel > 10) then
        maxLevel = 10
    end
    print("maxLevel" .. maxLevel)
    local level = cj.GetRandomInt(1, maxLevel)
    -- 掉落红技能书
    --if (cj.GetRandomInt(1, 30) == 13) then
    if (#game.thisOptionAbilityItem["red"][level] > 0) then
        local itId = hSys.randTable(game.thisOptionAbilityItem["red"][level]).ITEM_ID
        hitem.create(
            {
                itemId = itId,
                x = x,
                y = y,
                during = 60
            }
        )
    end
    -- 掉落黄技能书
    --elseif (cj.GetRandomInt(1, 55) == 17) then
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
    --end
end

-- 敌军死亡YB
enemyDeadYB = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        haward.forGroupExp(u, 20 * game.rule.hz.wave)
    end
    deadAward(hevent.getTriggerUnit(), u)
end

-- 敌军死亡HZ
enemyDeadHZ = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        haward.forGroupExp(u, 15 * game.rule.hz.wave)
    end
    deadAward(hevent.getTriggerUnit(), u)
end

-- 敌军死亡DK
enemyDeadDK = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 25 * game.rule.dk.wave[pi]
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
