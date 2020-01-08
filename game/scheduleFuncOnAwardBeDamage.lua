-- 受到伤害
awardBeDamage = function()
    local u = hevent.getTriggerUnit()
    local sourceUnit = hevent.getSourceUnit()
    htextTag.style(htextTag.create2Unit(u, "哎呀~", 10.00, "", 1, 1.1, 11.00), "scale", cj.GetRandomReal(-0.05, 0.05), 0)
    hattr.set(
        u,
        10,
        {
            move = "-20"
        }
    )
    if (sourceUnit ~= nil) then
        local name = hunit.getName(u)
        local damage = hevent.getDamage()
        if (name == "[AWARD]大金币") then
            haward.forUnitGold(sourceUnit, math.floor(damage * 0.25))
        elseif (name == "[AWARD]大本书") then
            haward.forUnitExp(sourceUnit, math.floor(damage * 0.6))
        end
    end
end
