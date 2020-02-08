setTowerSkillByBook = function(u, abliOps, opt)
    local optChar = "add"
    if (opt == "-") then
        optChar = "sub"
    end
    local level = (abliOps.ABILITY_LEVEL or 1) * 2 - 1
    if (abliOps.Name == "战斗传统" or abliOps.Name == "战争武斗" or abliOps.Name == "武术至尊") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "智勇双全") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "心灵之火") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "鬼神头盔" or abliOps.Name == "擎天之柱" or abliOps.Name == "牛鬼蛇神") then
        hattr.set(u, 0, {str_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "猎豹一族" or abliOps.Name == "荒芜" or abliOps.Name == "荒诞") then
        hattr.set(u, 0, {agi_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "魔法杖" or abliOps.Name == "甜甜圈法杖" or abliOps.Name == "天师法剑") then
        hattr.set(u, 0, {int_green = opt .. level * abliOps.Val[1]})
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
    elseif (abliOps.Name == "致命一击" or abliOps.Name == "战熊咆哮" or abliOps.Name == "暗杀巅峰") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "knocking",
                            odds = level * abliOps.Val[1],
                            percent = level * abliOps.Val[2]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "魔法回应" or abliOps.Name == "魔导灵眼" or abliOps.Name == "法术天尊") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "violence",
                            odds = level * abliOps.Val[1],
                            percent = level * abliOps.Val[2]
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
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "knocking",
                            odds = level * abliOps.Val[2],
                            percent = level * abliOps.Val[3]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "分裂攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "split",
                            range = 500,
                            odds = 100,
                            percent = level * abliOps.Val[1]
                        }
                    }
                }
            }
        )
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
    elseif (abliOps.Name == "剧毒标枪") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 4,
                            effect = "Abilities\\Spells\\Items\\OrbVenom\\OrbVenomSpecialArt.mdl"
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
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 4.5,
                            effect = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
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
        hattr.set(u, 0, {damage_rebound_oppose = opt .. level * abliOps.Val[1]})
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
                        {
                            attr = "lightning_chain",
                            odds = 30,
                            qty = 3,
                            range = 600,
                            val = level * abliOps.Val[1],
                            change = -0.25,
                            effect = "Abilities\\Weapons\\Bolt\\BoltImpact.mdl"
                        }
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
                        {
                            attr = "defend",
                            odds = 100,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "凤凰烈焰") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "fire",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            during = 5.00,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒液体") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "poison",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            during = 5.00,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Other\\AcidBomb\\BottleImpact.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "猛毒试剂") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "resistance",
                            odds = 100,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Weapons\\PoisonSting\\PoisonStingTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "千里冰封") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "move",
                            odds = 35,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "暗夜对剑") then
        hattr.set(u, 0, {attack_damage_type = opt .. "dark", natural_dark = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶龙吞日") then
        hattr.set(u, 0, {attack_damage_type = opt .. "dargon", natural_dargon = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶鬼呼声") then
        hattr.set(u, 0, {attack_damage_type = opt .. "ghost", natural_ghost = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "折翅天使") then
        hattr.set(u, 0, {attack_damage_type = opt .. "god", natural_god = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "光导使者") then
        hattr.set(u, 0, {attack_damage_type = opt .. "light", natural_light = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "冰心") then
        hattr.set(u, 0, {attack_damage_type = opt .. "ice", natural_ice = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "邪魅之虫") then
        hattr.set(u, 0, {attack_damage_type = opt .. "insect", natural_insect = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "德鲁伊叶子") then
        hattr.set(u, 0, {attack_damage_type = opt .. "wood", life_back = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "雷神之手") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "thunder",
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "lightning_chain",
                            odds = 35,
                            qty = 3,
                            range = 600,
                            val = level * abliOps.Val[1],
                            change = -0.25,
                            effect = "Abilities\\Weapons\\Bolt\\BoltImpact.mdl"
                        }
                    }
                }
            }
        )
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
    elseif (abliOps.Name == "抗性神经") then
        hattr.set(u, 0, {resistance = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "荆棘") then
        hattr.set(u, 0, {damage_rebound = opt .. (level * abliOps.Val[1])})
    end
    if (abliOps.Name == "双修对剑") then
        hattr.set(
            u,
            0,
            {
                attack_green = opt .. (level * abliOps.Val[1]),
                str_green = opt .. (level * abliOps.Val[2]),
                agi_green = opt .. (level * abliOps.Val[3])
            }
        )
    elseif (abliOps.Name == "音速回击") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "疾风") then
        hattr.set(u, 0, {attack_damage_type = opt .. "wind", natural_wind = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "魔神之剑") then
        hattr.set(u, 0, {damage_extent = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "胆颤心惊") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "defend",
                            odds = 100,
                            during = 6,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                        },
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 6,
                            effect = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "害怕") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "fetter",
                            odds = 30,
                            during = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "天神加护") then
        hattr.set(u, 0, {life = opt .. (level * abliOps.Val[1]), life_back = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "圣封护盾") then
        hattr.set(u, 0, {defend = opt .. (level * abliOps.Val[1]), resistance = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "极速闪避") then
        hattr.set(u, 0, {avoid = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "刺痛极限") then
        hattr.set(u, 0, {toughness = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "刺网") then
        hattr.set(u, 0, {damage_rebound = opt .. (level * abliOps.Val[1])})
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
