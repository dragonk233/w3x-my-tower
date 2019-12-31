setTowerLevel = function(playerIndex)
    local oldLevel = game.playerTowerLevel[playerIndex]
    if (oldLevel ~= nil) then
        hskill.del(game.playerTower[playerIndex], game.thisUnitLevelAbilities[oldLevel].ABILITY_ID, 0)
    else
        oldLevel = 0
    end
    local unitLv = 0
    if (math.random(1, 6) == 1) then
        unitLv = 0
    elseif (math.random(1, 5) == 1) then
        unitLv = 1
    elseif (math.random(1, 4) == 1) then
        unitLv = 2
    elseif (math.random(1, 3) == 1) then
        unitLv = 3
    elseif (math.random(1, 2) == 1) then
        unitLv = 4
    elseif (math.random(1, 2) == 1) then
        unitLv = 5
    elseif (math.random(1, 2) == 1) then
        unitLv = 6
    elseif (math.random(1, 2) == 1) then
        unitLv = 7
    elseif (math.random(1, 2) == 1) then
        unitLv = 8
    else
        unitLv = 9
    end
    hskill.add(game.playerTower[playerIndex], game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    if (unitLv == 9) then
        hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
    end
    game.playerTowerLevel[playerIndex] = unitLv
    hmsg.echo00(hplayer.players[playerIndex], "兵塔得到了" .. hColor.yellow(unitLv) .. "级天赋")
    --计算
    local diff = math.floor(unitLv - oldLevel)
    local towerId = hunit.getId(game.playerTower[playerIndex])
    if (diff > 0) then
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "+" .. (diff * 0.15 * hslk_global.unitsKV[towerId].STR),
                agi_white = "+" .. (diff * 0.15 * hslk_global.unitsKV[towerId].AGI),
                int_white = "+" .. (diff * 0.15 * hslk_global.unitsKV[towerId].INT),
                attack_white = "+" .. (diff * 0.06 * hslk_global.unitsKV[towerId].ATTACK_WHITE),
                attack_green = "+" .. (diff * 0.06 * hslk_global.unitsKV[towerId].ATTACK_GREEN)
            }
        )
    elseif (diff < 0) then
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "-" .. (diff * 0.15 * hslk_global.unitsKV[towerId].STR),
                agi_white = "-" .. (diff * 0.15 * hslk_global.unitsKV[towerId].AGI),
                int_white = "-" .. (diff * 0.15 * hslk_global.unitsKV[towerId].INT),
                attack_white = "-" .. (diff * 0.06 * hslk_global.unitsKV[towerId].ATTACK_WHITE),
                attack_green = "-" .. (diff * 0.06 * hslk_global.unitsKV[towerId].ATTACK_GREEN)
            }
        )
    end
end
