-- 受到伤害
towerShadowTtgCount = 1
towerShadowTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 1, 2, 10),
        "scale",
        0,
        towerShadowTtgCount * 0.15
    )
    towerShadowTtgCount = towerShadowTtgCount + 1
    htime.setTimeout(
        2,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            towerShadowTtgCount = towerShadowTtgCount - 1
        end
    )
end
towerShadowBeDamage = function()
    local u = hevent.getTriggerUnit()
    local sourceUnit = hevent.getSourceUnit()
    local playerIndex = hunit.getUserData(u)
    local shadow = game.playerTower[playerIndex]
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(shadow, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            if (Name ~= nil) then
                if (Name == "恶心粘液") then
                    htextTag.style(htextTag.create2Unit(u, Name, 7, "FFFF00", 1, 1, 10), "scale", 0, 0.25)
                    hattr.set(
                        sourceUnit,
                        5,
                        {
                            attack_speed = "-" .. 5 * level
                        }
                    )
                end
                if (Name == "降智打击") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        6,
                        {
                            int_green = "-" .. 3 * level
                        }
                    )
                end
                if (Name == "变相移动") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        4,
                        {
                            move = "+" .. 30 * level
                        }
                    )
                end
                if (Name == "钢铁身躯") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        8,
                        {
                            defend = "+" .. 2 * level
                        }
                    )
                end
                if (Name == "回音击" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.swim(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * 1.2
                        }
                    )
                end
                if (Name == "寂静督视" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.unarm(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * 3.5
                        }
                    )
                end
            end
        end
    end
end
