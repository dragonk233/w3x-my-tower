-- 敌军受到攻击
enemyBeDamage = function()
    local u = hevent.getTriggerUnit()
    if (his.alive(u) and cj.GetRandomInt(1, 5) == 3) then
        htextTag.style(htextTag.create2Unit(
            u,
            game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)],
            10.00,
            "",
            1,
            1.1,
            11.00
        ), "scale", cj.GetRandomReal(-0.05, 0.05), 0)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        hattr.set(u, 2.50, {
            move = "+70"
        })
    end
end