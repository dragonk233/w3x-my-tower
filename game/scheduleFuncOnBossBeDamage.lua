-- 敌军boss受到伤害
bossBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and cj.GetRandomInt(1, 5) == 3) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            cj.GetRandomReal(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        hattr.set(
            u,
            1.50,
            {
                move = "+" .. math.random(100, 150)
            }
        )
    end
end
