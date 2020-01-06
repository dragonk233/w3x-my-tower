setTowerSkillByBook = function(u, abliOps, opt)
    local optChar = "add"
    if (opt == "-") then
        optChar = "sub"
    end
    local level = abliOps.ABILITY_LEVEL * 2 - 1
    if (abliOps.Name == "战斗传统") then
        hattr.set(u, 0, {attack_white = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "魔法杖") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "战争武斗") then
        hattr.set(u, 0, {attack_white = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "智勇双全") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "强击之箭") then
        hattr.set(u, 0, {attack_white = opt .. (level * abliOps.Val[1])})
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "致命一击") then
        hattr.set(u, 0, {knocking_odds = opt .. (level * abliOps.Val[1])})
        hattr.set(u, 0, {knocking = opt .. "15"})
    elseif (abliOps.Name == "魔法回应") then
        hattr.set(u, 0, {violence_odds = opt .. (level * abliOps.Val[1])})
        hattr.set(u, 0, {violence = opt .. "15"})
    elseif (abliOps.Name == "心灵之火") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "星辰攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "swim",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 0.5
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "强烈炮弹") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "swim",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 0.25
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒标枪") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 4,
                            model = "Abilities\\Spells\\Items\\OrbVenom\\OrbVenomSpecialArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "蝎子之尾") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 4,
                            model = "Abilities\\Spells\\NightElf\\CorrosiveBreath\\ChimaeraAcidTargetArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "切割刀刃") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 4.5,
                            model = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "勇气勋章") then
        hattr.set(
            u,
            0,
            {
                str_green = opt .. level * abliOps.Val[1],
                agi_green = opt .. level * abliOps.Val[1],
                int_green = opt .. level * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "狂牛身躯" or abliOps.Name == "鬼神头盔" or abliOps.Name == "擎天之柱") then
        hattr.set(u, 0, {str_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "猎豹一族" or abliOps.Name == "蝙蝠獠牙" or abliOps.Name == "鬼神荒芜") then
        hattr.set(u, 0, {agi_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "甜甜圈法杖" or abliOps.Name == "天师法剑" or abliOps.Name == "艾露尼之优雅") then
        hattr.set(u, 0, {int_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "一发长枪" or abliOps.Name == "打靶") then
        hattr.set(u, 0, {aim = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "致命抵抗") then
        hattr.set(
            u,
            0,
            {
                knocking_oppose = opt .. level * abliOps.Val[1],
                violence_oppose = opt .. level * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "反伤抵抗") then
        hattr.set(u, 0, {hunt_rebound_oppose = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "变相移动") then
        hattr.set(u, 0, {move = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "专注护身") then
        hattr.set(u, 0, {defend = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "噩梦移植") then
        hattr.set(u, 0, {life = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "雷电之锤") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        attr = "lightning_chain",
                        odds = 30,
                        qty = 3,
                        val = level * abliOps.Val[1]
                    }
                }
            }
        )
    end
    if (abliOps.Name == "穿透之箭") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        attr = "defend",
                        odds = 100,
                        during = 3,
                        val = level * abliOps.Val[1],
                        model = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                    }
                }
            }
        )
    elseif (abliOps.Name == "凤凰烈焰") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = opt .. "fire",
                attack_debuff = {
                    [optChar] = {
                        attr = "life",
                        odds = 100,
                        during = 5.00,
                        val = level * abliOps.Val[1],
                        model = "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl"
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒液体") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = opt .. "poison",
                attack_debuff = {
                    [optChar] = {
                        attr = "life",
                        odds = 100,
                        during = 5.00,
                        val = level * abliOps.Val[1],
                        model = "Abilities\\Spells\\Other\\AcidBomb\\BottleImpact.mdl"
                    }
                }
            }
        )
    elseif (abliOps.Name == "猛毒试剂") then
        hattr.set(u, 0, {natural_poison = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "日食") then
        hattr.set(u, 0, {natural_dark = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "邪神之手") then
        hattr.set(u, 0, {natural_ghost = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "千里冰封") then
        hattr.set(u, 0, {natural_ice = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶鬼呼声") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "ghost"})
    elseif (abliOps.Name == "光导使者") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "light"})
    elseif (abliOps.Name == "暗夜对剑") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "dark"})
    elseif (abliOps.Name == "雷神之手") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "thunder"})
    elseif (abliOps.Name == "冰心") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "ice"})
    elseif (abliOps.Name == "邪魅之虫") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "insect"})
    elseif (abliOps.Name == "德鲁伊叶子") then
        hattr.set(u, 0, {attack_hunt_type = opt .. "wood", life_back = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "战熊咆哮") then
        hattr.set(u, 0, {knocking_odds = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "魔导灵眼") then
        hattr.set(u, 0, {violence_odds = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "重击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "swim",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 1
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "瞄准") then
        hattr.set(
            u,
            0,
            {
                aim = opt .. (level * abliOps.Val[1]),
                knocking = opt .. (level * abliOps.Val[2])
            }
        )
    elseif (abliOps.Name == "分裂") then
        hattr.set(u, 0, {split = opt .. (level * abliOps.Val[1]), split_range = opt .. 300})
    elseif (abliOps.Name == "五行之力") then
        hattr.set(
            u,
            0,
            {
                natural_metal = opt .. (level * abliOps.Val[1]),
                natural_wood = opt .. (level * abliOps.Val[1]),
                natural_water = opt .. (level * abliOps.Val[1]),
                natural_fire = opt .. (level * abliOps.Val[1]),
                natural_soil = opt .. (level * abliOps.Val[1])
            }
        )
    elseif (abliOps.Name == "五行相克") then
        hattr.set(
            u,
            0,
            {
                natural_metal_oppose = opt .. (level * abliOps.Val[1]),
                natural_wood_oppose = opt .. (level * abliOps.Val[1]),
                natural_water_oppose = opt .. (level * abliOps.Val[1]),
                natural_fire_oppose = opt .. (level * abliOps.Val[1]),
                natural_soil_oppose = opt .. (level * abliOps.Val[1])
            }
        )
    elseif (abliOps.Name == "赤血盾牌") then
        hattr.set(u, 0, {life = opt .. (level * abliOps.Val[1]), defend = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "亢奋战鼓") then
        hattr.set(u, 0, {toughness = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "离子雨") then
        hattr.set(u, 0, {lightning_chain_oppose = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "血球") then
        hattr.set(u, 0, {hemophagia = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "抗性神经") then
        hattr.set(u, 0, {resistance = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "荆棘") then
        hattr.set(u, 0, {hunt_rebound = opt .. (level * abliOps.Val[1])})
    end
    if (abliOps.Name == "暗杀巅峰") then
        hattr.set(
            u,
            0,
            {
                knocking_odds = opt .. (level * abliOps.Val[1]),
                knocking = opt .. (level * abliOps.Val[2])
            }
        )
    end
end

addTowerSkillByBook = function(u, site, abliOps)
    if (u == nil or site == nil or abliOps == nil) then
        return
    end
    hskill.add(u, abliOps.ABILITY_ID)
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    game.towersAbilities[playerIndex][site] = abliOps
    if (abliOps.Name == nil) then
        return
    end
    setTowerSkillByBook(u, abliOps, "+")
end

delTowerSkillByBook = function(u, site, abliOps)
    if (u == nil or site == nil or abliOps == nil) then
        return
    end
    hskill.del(u, abliOps.ABILITY_ID)
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    game.towersAbilities[playerIndex][site] = nil
    if (abliOps.Name == nil) then
        return
    end
    setTowerSkillByBook(u, abliOps, "-")
end
