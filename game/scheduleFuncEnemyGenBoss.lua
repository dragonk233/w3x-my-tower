require "game.scheduleFuncOnBossBeDamage"
require "game.scheduleFuncOnBossDead"
-- 出兵(boss)
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
                    life = "=" .. (300 * curWave),
                    move = "=120"
                }
            )
            game.currentMon = game.currentMon + 1
            hevent.onBeDamage(u, bossBeDamage)
            hevent.onDead(u, bossDead)
            hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
        end
    end
    hmark.create("war3mapImported\\mark_boss_coming.blp", 4.00)
end
