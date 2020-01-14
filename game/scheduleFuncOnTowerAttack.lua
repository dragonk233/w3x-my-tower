-- 兵塔攻击到了
onTowerAttackTtgCount = 1
onTowerAttackTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 2, 2, 10),
        "scale",
        0,
        onTowerAttackTtgCount * 0.15
    )
    onTowerAttackTtgCount = onTowerAttackTtgCount + 1
    htime.setTimeout(
        2,
        function(t, td)
            htime.delDialog(td)
            htime.delTimer(t)
            onTowerAttackTtgCount = onTowerAttackTtgCount - 1
        end
    )
end
onTowerAttack = function(evtData)
    local u = evtData.attacker
    local targetUnit = evtData.targetUnit
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(u, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            if (Name ~= nil) then
                --ability
                if (Name == "侵毒连击" and math.random(1, 10) == 5) then
                    onTowerAttackTtg(u, Name)
                    hattr.set(
                        u,
                        5.00,
                        {
                            attack_hunt_type = "+poison",
                            attack_speed = "+" .. 10 * level
                        }
                    )
                end
                if (Name == "机关枪" and math.random(1, 5) == 3) then
                    onTowerAttackTtg(u, Name)
                    hattr.set(
                        u,
                        2.50 * level,
                        {
                            attack_speed = "+" .. 12.5 * level
                        }
                    )
                end
                if (Name == "掠夺黄金" and math.random(1, 40) <= level) then
                    onTowerAttackTtg(u, Name)
                    haward.forPlayerGold(10)
                end
                if (Name == "震晕践踏" and math.random(1, 10) == 5) then
                    onTowerAttackTtg(u, Name)
                    hskill.rangeSwim(
                        {
                            range = 1000,
                            odds = 100,
                            during = 0.5 * level,
                            whichUnit = u,
                            filter = function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        }
                    )
                end
                if (Name == "炸裂践踏" and math.random(1, 10) == 5) then
                    onTowerAttackTtg(u, Name)
                    hskill.rangeSwim(
                        {
                            range = 1000,
                            odds = 100,
                            during = 1.2 * level,
                            damage = 50 * level,
                            whichUnit = u,
                            sourceUnit = u,
                            effect = "war3mapImported\\eff_shock_explosion.mdl",
                            filter = function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        }
                    )
                end
                if (Name == "冰花炸裂" and math.random(1, 7) == 4) then
                    onTowerAttackTtg(u, Name)
                    local x = cj.GetUnitX(u)
                    local y = cj.GetUnitY(u)
                    heffect.toXY("war3mapImported\\eff_FrostNova.mdl", x, y, 0)
                    local g =
                        hgroup.createByUnit(
                        u,
                        1000,
                        function()
                            return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                        end
                    )
                    cj.ForGroup(
                        g,
                        function()
                            local eu = cj.GetEnumUnit()
                            hattr.set(eu, 7.5, {move = "-" .. 45 * level})
                            heffect.toUnit("war3mapImported\\eff_frost_burst.mdl", eu, 0)
                            heffect.bindUnit("war3mapImported\\eff_icing.mdl", eu, "foot", 7.5)
                        end
                    )
                    cj.GroupClear(g)
                    cj.DestroyGroup(g)
                end
                if (Name == "死亡同步" and math.random(1, 200) <= level and his.alive(targetUnit)) then
                    onTowerAttackTtg(u, Name)
                    heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                    hunit.kill(targetUnit, 0)
                end
                --
                if (his.alive(targetUnit) and (Name == "必死宣言" or Name == "同葬")) then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, Name)
                        heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                        hunit.kill(targetUnit, 0)
                    end
                end
                if (Name == "烈焰风暴") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, Name)
                        hskill.rangeDamage(
                            {
                                sourceUnit = u,
                                whichUnit = targetUnit,
                                range = v.Val[2],
                                frequency = v.Val[3],
                                damage = v.Val[4],
                                times = v.Val[5],
                                effect = v.Val[6],
                                effectSingle = v.Val[7],
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.fire},
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end
                            }
                        )
                    end
                end
                if (Name == "雷霆一击") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, Name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY(val[6], x, y, 0)
                        local g =
                            hgroup.createByUnit(
                            u,
                            1000,
                            function()
                                return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                            end
                        )
                        cj.ForGroup(
                            g,
                            function()
                                local eu = cj.GetEnumUnit()
                                hattr.set(eu, val[4], {[val[5]] = "-" .. val[3]})
                                heffect.bindUnit(val[7], eu, "origin", val[4])
                                hskill.damage(
                                    {
                                        sourceUnit = u,
                                        targetUnit = eu,
                                        damage = val[2],
                                        damageKind = CONST_DAMAGE_KIND.skill,
                                        damagetYPE = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.thunder}
                                    }
                                )
                            end
                        )
                        cj.GroupClear(g)
                        cj.DestroyGroup(g)
                    end
                end
                if (Name == "剑刃风暴" and his.get(u, "isWhirlwind") == false) then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, Name)
                        hskill.whirlwind(
                            {
                                range = 1000,
                                frequency = val[2],
                                during = val[4],
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                damage = val[3],
                                sourceUnit = u,
                                animation = "spin",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical}
                            }
                        )
                    end
                end
                if (Name == "震荡波") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, Name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        for q = 1, val[2], 1 do
                            htime.setTimeout(
                                (q - 1) * 0.55,
                                function(t, td)
                                    htime.delDialog(td)
                                    htime.delDialog(t)
                                    hskill.leap(
                                        {
                                            sourceUnit = u,
                                            x = txy.x,
                                            y = txy.y,
                                            speed = 10,
                                            acceleration = 1,
                                            filter = function()
                                                return his.alive(cj.GetFilterUnit()) and
                                                    his.enemy(cj.GetFilterUnit(), u)
                                            end,
                                            tokenArrow = val[5],
                                            tokenArrowScale = 2.00,
                                            tokenArrowOpacity = 1,
                                            damageMovement = val[3],
                                            damageMovementRange = 125,
                                            damageKind = CONST_DAMAGE_KIND.skill,
                                            damageType = {CONST_DAMAGE_TYPE.physical},
                                            extraInfluence = function(eu)
                                                hskill.swim(
                                                    {
                                                        odds = 100,
                                                        whichUnit = eu,
                                                        during = val[4]
                                                    }
                                                )
                                            end
                                        }
                                    )
                                end
                            )
                        end
                    end
                end
                if (Name == "剑气") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, Name)
                        local txy =
                            math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 26,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 20,
                                acceleration = -0.15,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 100,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical},
                                damageEffect = "war3mapImported\\eff_speed_slash2.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            defend = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                end
            end
        end
    end
end
