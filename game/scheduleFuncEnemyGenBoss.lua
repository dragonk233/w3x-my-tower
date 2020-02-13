require "game.scheduleFuncOnBossBeDamage"
require "game.scheduleFuncOnBossDead"
-- 出兵(boss)
bossGenLife = 800
bossGen = function(curWave)
    local boss = game.thisEnemysBoss[cj.GetRandomInt(1, game.thisEnemysBossLen)].UNIT_ID
    for k, v in pairs(game.pathPoint) do
        if (his.playing(hplayer.players[k])) then
            local u =
                henemy.create(
                {
                    unitId = boss,
                    qty = 1,
                    x = v[1][1],
                    y = v[1][2],
                    facing = k * -90 + 180
                }
            )
            cj.SetUnitPathing(u, false)
            hattr.set(
                u,
                0,
                {
                    life = "=" .. (bossGenLife * curWave),
                    move = "=130",
                    defend = "=" .. curWave * 2,
                    toughness = "=" .. curWave * 20,
                    resistance = "=" .. curWave * 0.5,
                    avoid = "=" .. curWave * 0.18,
                    knocking_oppose = "=" .. curWave * 0.3,
                    violence_oppose = "=" .. curWave * 0.3,
                    swim_oppose = "=" .. curWave * 0.2,
                    fetter_oppose = "=" .. curWave * 0.2,
                    lightning_chain_oppose = "=" .. curWave * 0.1,
                    natural_fire_oppose = "=" .. curWave * 0.06,
                    natural_water_oppose = "=" .. curWave * 0.06,
                    natural_ice_oppose = "=" .. curWave * 0.06,
                    natural_wind_oppose = "=" .. curWave * 0.06,
                    natural_light_oppose = "=" .. curWave * 0.05,
                    natural_dark_oppose = "=" .. curWave * 0.05,
                    natural_wood_oppose = "=" .. curWave * 0.05,
                    natural_thunder_oppose = "=" .. curWave * 0.05,
                    natural_soil_oppose = "=" .. curWave * 0.04,
                    natural_poison_oppose = "=" .. curWave * 0.04,
                    natural_ghost_oppose = "=" .. curWave * 0.04,
                    natural_metal_oppose = "=" .. curWave * 0.04,
                    natural_dragon_oppose = "=" .. curWave * 0.03,
                    natural_insect_oppose = "=" .. curWave * 0.02,
                    natural_god_oppose = "=" .. curWave * 0.01
                }
            )
            game.currentMon = game.currentMon + 1
            hevent.onBeDamage(u, bossBeDamage)
            hevent.onDead(u, bossDead)
            hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
        end
    end
    hmark.create("war3mapImported\\mark_boss_coming.blp", 4.00)
    bossGenLife = bossGenLife + 285 + curWave * 3
end
