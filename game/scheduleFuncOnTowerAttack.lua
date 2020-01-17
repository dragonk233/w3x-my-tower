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
            local name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            if (name ~= nil) then
                --ability
                if (name == "侵毒连击" and math.random(1, 10) == 5) then
                    onTowerAttackTtg(u, name)
                    hattr.set(
                        u,
                        5.00,
                        {
                            attack_damage_type = "+poison",
                            attack_speed = "+" .. 10 * level
                        }
                    )
                end
                if (name == "机关枪" and math.random(1, 5) == 3) then
                    onTowerAttackTtg(u, name)
                    hattr.set(
                        u,
                        2.50 * level,
                        {
                            attack_speed = "+" .. 12.5 * level
                        }
                    )
                end
                if (name == "掠夺黄金" and math.random(1, 40) <= level) then
                    onTowerAttackTtg(u, name)
                    haward.forPlayerGold(10)
                end
                if (name == "震晕践踏" and math.random(1, 10) == 5) then
                    onTowerAttackTtg(u, name)
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
                if (name == "炸裂践踏" and math.random(1, 10) == 5) then
                    onTowerAttackTtg(u, name)
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
                if (name == "冰花炸裂" and math.random(1, 7) == 4) then
                    onTowerAttackTtg(u, name)
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
                if (name == "死亡同步" and math.random(1, 200) <= level and his.alive(targetUnit)) then
                    onTowerAttackTtg(u, name)
                    heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                    hunit.kill(targetUnit, 0)
                end
                --
                if (name == "偷窃") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        haward.forPlayerGold(val[2])
                        heffect.toUnit("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", u, 0)
                    end
                end
                if (his.alive(targetUnit) and (name == "必死宣言" or name == "同葬" or name == "引路人")) then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                        hunit.kill(targetUnit, 0)
                    end
                end
                if (name == "烈焰风暴") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.damageRange(
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
                if (name == "雷霆一击" or name == "缠绕") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
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
                        local damageType = {}
                        if (name == "雷霆一击") then
                            damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.thunder}
                        elseif (name == "缠绕") then
                            damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.wood}
                        end
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
                                        damageType = damageType
                                    }
                                )
                            end
                        )
                        cj.GroupClear(g)
                        cj.DestroyGroup(g)
                    end
                end
                if (name == "石化凝视") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY("war3mapImported\\eff_DarkLightningNova.mdl", x, y, 0)
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
                                hattr.set(
                                    eu,
                                    val[3],
                                    {
                                        move = "-522",
                                        defend = "-" .. val[2]
                                    }
                                )
                            end
                        )
                        cj.GroupClear(g)
                        cj.DestroyGroup(g)
                    end
                end
                if (name == "灼烧大地") then
                    onTowerAttackTtg(u, name)
                    local val = v.Val or {0}
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
                            hskill.damage(
                                {
                                    sourceUnit = u,
                                    targetUnit = eu,
                                    damage = val[1],
                                    damageKind = CONST_DAMAGE_KIND.skill,
                                    damageType = {CONST_DAMAGE_TYPE.fire}
                                }
                            )
                        end
                    )
                    cj.GroupClear(g)
                    cj.DestroyGroup(g)
                end
                if (name == "猎手幻刀" or name == "觉醒幻刀" or name == "究极幻刀") then
                    onTowerAttackTtg(u, name)
                    local val = v.Val or {0}
                    heffect.toUnit("war3mapImported\\eff_x_round_dance.mdl", u, 0.8)
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
                            hskill.damage(
                                {
                                    sourceUnit = u,
                                    targetUnit = eu,
                                    damage = val[1],
                                    damageKind = CONST_DAMAGE_KIND.skill,
                                    damageType = {CONST_DAMAGE_TYPE.physical},
                                    effect = "war3mapImported\\eff_Culling_Slash_Silver.mdl"
                                }
                            )
                        end
                    )
                    cj.GroupClear(g)
                    cj.DestroyGroup(g)
                end
                if (name == "剑刃风暴" and his.get(u, "isWhirlwind") == false) then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
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
                if (name == "震荡波") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
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
                elseif (name == "剑气") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
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
                elseif (name == "爆骨火弹") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leap(
                            {
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 16,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "war3mapImported\\eff_Firebolt_Major.mdl",
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 100,
                                damageEnd = val[3],
                                damageEndRange = val[2],
                                effectEnd = "war3mapImported\\eff_FireStomp.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire},
                                damageString = "火",
                                damageEffect = "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl"
                            }
                        )
                    end
                elseif (name == "恐惧蝠群") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 700,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 15,
                                acceleration = 1,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "war3mapImported\\eff_Call_of_Dread_Green.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.dark},
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        0,
                                        {
                                            defend = "-" .. val[4],
                                            move = "-" .. val[5]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "导弹降日") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit("war3mapImported\\eff_RocketRainBirth.mdl", u, 0)
                        hskill.leapRange(
                            {
                                targetRange = 1000,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 8,
                                acceleration = 1.5,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "Abilities\\Spells\\Other\\TinkerRocket\\TinkerRocketMissile.mdl",
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 150,
                                effectEnd = "war3mapImported\\eff_ExplosionBig.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire}
                            }
                        )
                    end
                elseif (name == "火爆山岩") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = val[2],
                                sourceUnit = u,
                                targetUnit = u,
                                speed = 18,
                                acceleration = 0,
                                filter = function()
                                    return his.alive(cj.GetFilterUnit()) and his.enemy(cj.GetFilterUnit(), u)
                                end,
                                tokenArrow = "Abilities\\Spells\\Other\\Volcano\\VolcanoMissile.mdl",
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "Abilities\\Spells\\Other\\Volcano\\VolcanoDeath.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = {CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire}
                            }
                        )
                    end
                elseif (name == "蛇棒" or name == "骷髅兵") then
                    local val = v.Val or {0}
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local summon = game.towersSummon[val[2]]
                        if (summon == nil) then
                            return
                        end
                        local su =
                            hunit.create(
                            {
                                whichPlayer = cj.GetOwningPlayer(u),
                                unitId = summon.UNIT_ID,
                                qty = 1,
                                life = val[3],
                                x = cj.GetUnitX(targetUnit),
                                y = cj.GetUnitY(targetUnit)
                            }
                        )
                        hattr.set(
                            su,
                            0,
                            {
                                attack_white = "=" .. val[4] * 0.01 * hattr.get(u, "attack_white"),
                                attack_green = "=" .. val[4] * 0.01 * hattr.get(u, "attack_green")
                            }
                        )
                    end
                end
            end
        end
    end
end
