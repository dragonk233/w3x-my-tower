require "game.scheduleFuncOnAwardBeDamage"
-- 出兵(award)
awardGenForOne = function(curWave, pi, awardMon)
    if (awardMon == nil) then
        awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    end
    local u =
        hemeny.create(
        {
            unitId = awardMon.UNIT_ID,
            qty = 1,
            x = game.pathPoint[pi][1][1],
            y = game.pathPoint[pi][1][2]
        }
    )
    cj.SetUnitPathing(u, false)
    hattr.set(
        u,
        0,
        {
            life = "=99999",
            move = "=120",
            defend = "=" .. curWave * 2,
            resistance = "=" .. curWave * 0.8
        }
    )
    if (game.rule.cur == "dk") then
        if (game.rule.dk.ai == true) then
            hunit.setPeriod(u, 120)
        else
            hunit.setPeriod(u, 30 * hplayer.qty_current)
        end
    else
        hunit.setPeriod(u, 30)
    end
    game.currentMon = game.currentMon + 1
    hevent.onBeDamage(u, awardBeDamage)
    if (awardMon.Name == "大金币") then
        hmark.create("war3mapImported\\mark_award_gold.blp", 4.00)
    elseif (awardMon.Name == "大本书") then
        hmark.create("war3mapImported\\mark_award_exp.blp", 4.00)
    end
end
awardGen = function(curWave)
    local awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    for k, v in pairs(game.pathPoint) do
        if (his.playing(hplayer.players[k]) or game.rule.dk.ai == true) then
            awardGenForOne(curWave, k, awardMon)
        end
    end
end
