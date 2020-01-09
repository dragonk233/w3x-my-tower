require "game.scheduleFuncOnShadowBeDamage"
require "game.scheduleFuncOnShadowDead"
-- 出兵(tower-shadow)
towerShadowGen = function(playerIndex)
    local tower = game.playerTower[playerIndex]
    local tid = hunit.getId(tower)
    local next = -1
    local realEnd = 4
    for i = 1, hplayer.qty_max, 1 do
        if (his.playing(hplayer.players[i]) or game.rule.dk.ai == true) then
            realEnd = i
        end
    end
    for i = 1, hplayer.qty_max, 1 do
        if (his.playing(hplayer.players[i]) or game.rule.dk.ai == true) then
            if (next == -1) then
                if (playerIndex == realEnd or i > playerIndex) then
                    next = i
                end
            end
        end
    end
    local u =
        hemeny.create(
        {
            unitId = game.towersShadow[tid].UNIT_ID,
            qty = 1,
            x = game.pathPoint[next][1][1],
            y = game.pathPoint[next][1][2],
            facing = playerIndex * -90 + 180,
        }
    )
    cj.SetUnitPathing(u, false)
    hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
    hattr.set(
        u,
        0,
        {
            move = "=100",
            life = "=" .. hattr.get(tower, "life"),
            life_back = "=" .. hattr.get(tower, "life_back"),
            defend = "=" .. hattr.get(tower, "defend"),
            resistance = "=" .. hattr.get(tower, "resistance"),
            toughness = "=" .. hattr.get(tower, "toughness"),
            avoid = "=" .. hattr.get(tower, "avoid"),
            hunt_rebound = "=" .. hattr.get(tower, "hunt_rebound"),
            knocking_oppose = "=" .. hattr.get(tower, "knocking_oppose"),
            violence_oppose = "=" .. hattr.get(tower, "violence_oppose"),
            hemophagia_oppose = "=" .. hattr.get(tower, "hemophagia_oppose"),
            hemophagia_skill_oppose = "=" .. hattr.get(tower, "hemophagia_skill_oppose"),
            swim_oppose = "=" .. hattr.get(tower, "swim_oppose"),
            broken_oppose = "=" .. hattr.get(tower, "broken_oppose"),
            silent_oppose = "=" .. hattr.get(tower, "silent_oppose"),
            unarm_oppose = "=" .. hattr.get(tower, "unarm_oppose"),
            fetter_oppose = "=" .. hattr.get(tower, "fetter_oppose"),
            bomb_oppose = "=" .. hattr.get(tower, "bomb_oppose"),
            lightning_chain_oppose = "=" .. hattr.get(tower, "lightning_chain_oppose"),
            natural_fire_oppose = "=" .. hattr.get(tower, "natural_fire_oppose"),
            natural_soil_oppose = "=" .. hattr.get(tower, "natural_soil_oppose"),
            natural_water_oppose = "=" .. hattr.get(tower, "natural_water_oppose"),
            natural_ice_oppose = "=" .. hattr.get(tower, "natural_ice_oppose"),
            natural_wind_oppose = "=" .. hattr.get(tower, "natural_wind_oppose"),
            natural_light_oppose = "=" .. hattr.get(tower, "natural_light_oppose"),
            natural_dark_oppose = "=" .. hattr.get(tower, "natural_dark_oppose"),
            natural_wood_oppose = "=" .. hattr.get(tower, "natural_wood_oppose"),
            natural_thunder_oppose = "=" .. hattr.get(tower, "natural_thunder_oppose"),
            natural_poison_oppose = "=" .. hattr.get(tower, "natural_poison_oppose"),
            natural_ghost_oppose = "=" .. hattr.get(tower, "natural_ghost_oppose"),
            natural_metal_oppose = "=" .. hattr.get(tower, "natural_metal_oppose"),
            natural_dragon_oppose = "=" .. hattr.get(tower, "natural_dragon_oppose"),
            natural_insect_oppose = "=" .. hattr.get(tower, "natural_insect_oppose")
        }
    )
    hunit.setUserData(u, playerIndex)
    hevent.onBeDamage(u, towerShadowBeDamage)
    hevent.onDead(u, towerShadowDead)
    local slk = hslk_global.unitsKV[tid]
    local towerName = slk.Name
    hmsg.echo(
        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
            "达到了|cffffff00第" ..
                game.rule.dk.wave[playerIndex] .. "级|r，TA的兵塔" .. hColor.red(towerName) .. "开始进攻！其他人注意防守！"
    )
end
