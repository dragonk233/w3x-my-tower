-- 兵塔攻击到了
onTowerAttack = function()
    local u = hevent.getAttacker()()
    local targetUnit = hevent.getTargetUnit()()
    if (his.death(targetUnit)) then
        return
    end
    print_mb(cj.GetUnitName(u))
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(u, ABILITY_ID)) then
            print_r(v)
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            if (Name ~= nil) then
                if (Name == "侵毒连击" and math.random(1, 10) == 5) then
                    hattr.set(
                        u,
                        2.00,
                        {
                            attack_hunt_type = "+poison",
                            attack_speed = "+" .. 25 * level
                        }
                    )
                elseif (Name == "机关枪" and math.random(1, 5) == 3) then
                    hattr.set(
                        u,
                        2.50 * level,
                        {
                            attack_speed = "+" .. 12.5 * level
                        }
                    )
                elseif (Name == "震晕践踏" and math.random(1, 10) == 5) then
                    --
                elseif (Name == "掠夺黄金" and math.random(1, 40) <= level) then
                    haward.forPlayerGold(10)
                end
            end
        end
    end
end
