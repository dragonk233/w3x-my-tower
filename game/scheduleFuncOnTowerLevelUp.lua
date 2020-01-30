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
                    str_white = "-" .. math.floor(oldLevel * 0.25 * hslk_global.unitsKV[towerId].STR),
                    agi_white = "-" .. math.floor(oldLevel * 0.25 * hslk_global.unitsKV[towerId].AGI),
                    int_white = "-" .. math.floor(oldLevel * 0.25 * hslk_global.unitsKV[towerId].INT),
                    attack_white = "-" .. math.floor(oldLevel * 0.3 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
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
        if (math.random(1, 7) == 1) then
            unitLv = 0
        elseif (math.random(1, 6) == 1) then
            unitLv = 1
        elseif (math.random(1, 5) == 1) then
            unitLv = 2
        elseif (math.random(1, 4) == 1) then
            unitLv = 3
        elseif (math.random(1, 3) == 1) then
            unitLv = 4
        elseif (math.random(1, 2) == 1) then
            unitLv = 5
        elseif (math.random(1, 2) == 2) then
            unitLv = 6
        elseif (math.random(1, 2) == 1) then
            unitLv = 7
        elseif (math.random(1, 2) == 2) then
            unitLv = 8
        else
            unitLv = 9
        end
    end
    hskill.add(game.playerTower[playerIndex], game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    game.playerTowerLevel[playerIndex] = unitLv
    if (lockLv == nil) then
        hmsg.echo00(hplayer.players[playerIndex], "新鉴定兵塔天赋是：" .. hColor.yellow(unitLv) .. "级")
        if (unitLv == 9) then
            hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
            hmsg.echo(
                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                    "得到了" .. hColor.yellow(unitLv) .. "级天赋兵塔，大家祝贺TA！"
            )
        end
    end
    --计算
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTower[playerIndex])
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "+" .. math.floor(unitLv * 0.25 * hslk_global.unitsKV[towerId].STR),
                agi_white = "+" .. math.floor(unitLv * 0.25 * hslk_global.unitsKV[towerId].AGI),
                int_white = "+" .. math.floor(unitLv * 0.25 * hslk_global.unitsKV[towerId].INT),
                attack_white = "+" .. math.floor(unitLv * 0.3 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
            }
        )
    end
end
