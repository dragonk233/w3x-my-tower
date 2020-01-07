subTowerLevel = function(playerIndex)
    local oldLevel = game.playerTowerLevel[playerIndex]
    if (oldLevel ~= nil) then
        hskill.del(game.playerTower[playerIndex], game.thisUnitLevelAbilities[oldLevel].ABILITY_ID, 0)
        if (oldLevel > 0) then
            local towerId = hunit.getId(game.playerTower[playerIndex])
            hattr.set(
                game.playerTower[playerIndex],
                0,
                {
                    str_white = "-" .. math.floor(oldLevel * 0.15 * hslk_global.unitsKV[towerId].STR),
                    agi_white = "-" .. math.floor(oldLevel * 0.15 * hslk_global.unitsKV[towerId].AGI),
                    int_white = "-" .. math.floor(oldLevel * 0.15 * hslk_global.unitsKV[towerId].INT),
                    attack_white = "-" .. math.floor(oldLevel * 0.06 * hslk_global.unitsKV[towerId].ATTACK_WHITE),
                    attack_green = "-" .. math.floor(oldLevel * 0.06 * hslk_global.unitsKV[towerId].ATTACK_GREEN)
                }
            )
            print_mbr(
                {
                    str_white = "-" .. math.floor(oldLevel * 0.15 * hslk_global.unitsKV[towerId].STR),
                    agi_white = "-" .. math.floor(oldLevel * 0.15 * hslk_global.unitsKV[towerId].AGI),
                    int_white = "-" .. math.floor(oldLevel * 0.15 * hslk_global.unitsKV[towerId].INT),
                    attack_white = "-" .. math.floor(oldLevel * 0.06 * hslk_global.unitsKV[towerId].ATTACK_WHITE),
                    attack_green = "-" .. math.floor(oldLevel * 0.06 * hslk_global.unitsKV[towerId].ATTACK_GREEN)
                }
            )
        end
        game.playerTowerLevel[playerIndex] = 0
    end
end

addTowerLevel = function(playerIndex, lockLv)
    local unitLv = 0
    if (lockLv ~= nil) then
        unitLv = lockLv
    else
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
    end
    hskill.add(game.playerTower[playerIndex], game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    if (unitLv == 9) then
        hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
    end
    game.playerTowerLevel[playerIndex] = unitLv
    hmsg.echo00(hplayer.players[playerIndex], "经鉴定兵塔天赋是：" .. hColor.yellow(unitLv) .. "级")
    if (unitLv == 9) then
        hmsg.echo(
            hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                "得到了" .. hColor.yellow(unitLv) .. "级天赋兵塔，大家祝贺TA！"
        )
    end
    --计算
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTower[playerIndex])
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "+" .. math.floor(unitLv * 0.15 * hslk_global.unitsKV[towerId].STR),
                agi_white = "+" .. math.floor(unitLv * 0.15 * hslk_global.unitsKV[towerId].AGI),
                int_white = "+" .. math.floor(unitLv * 0.15 * hslk_global.unitsKV[towerId].INT),
                attack_white = "+" .. math.floor(unitLv * 0.06 * hslk_global.unitsKV[towerId].ATTACK_WHITE),
                attack_green = "+" .. math.floor(unitLv * 0.06 * hslk_global.unitsKV[towerId].ATTACK_GREEN)
            }
        )
        print_mbr(
            {
                str_white = "+" .. math.floor(unitLv * 0.15 * hslk_global.unitsKV[towerId].STR),
                agi_white = "+" .. math.floor(unitLv * 0.15 * hslk_global.unitsKV[towerId].AGI),
                int_white = "+" .. math.floor(unitLv * 0.15 * hslk_global.unitsKV[towerId].INT),
                attack_white = "+" .. math.floor(unitLv * 0.06 * hslk_global.unitsKV[towerId].ATTACK_WHITE),
                attack_green = "+" .. math.floor(unitLv * 0.06 * hslk_global.unitsKV[towerId].ATTACK_GREEN)
            }
        )
    end
end
