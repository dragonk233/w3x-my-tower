setTowerSkillByBook = function(u, abliOps, opt)
    local optChar = "add"
    if (opt == "-") then
        optChar = "sub"
    end
    if (abliOps.Name == "战斗传统") then
        hattr.set(u, 0, {attack_white = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "魔法杖") then
        hattr.set(u, 0, {attack_green = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "战争武斗") then
        hattr.set(u, 0, {attack_white = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "智勇双全") then
        hattr.set(u, 0, {attack_green = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "强击之箭") then
        hattr.set(u, 0, {attack_white = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
        hattr.set(u, 0, {attack_green = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[2])})
    elseif (abliOps.Name == "致命一击") then
        hattr.set(u, 0, {knocking_odds = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
        hattr.set(u, 0, {knocking = opt .. "15"})
    elseif (abliOps.Name == "魔法回应") then
        hattr.set(u, 0, {violence_odds = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
        hattr.set(u, 0, {violence = opt .. "15"})
    elseif (abliOps.Name == "心灵之火") then
        hattr.set(u, 0, {attack_speed = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "星辰攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "swim",
                            odds = abliOps.ABILITY_LEVEL * abliOps.Val[1],
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
                            odds = abliOps.ABILITY_LEVEL * abliOps.Val[1],
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
                            odds = abliOps.ABILITY_LEVEL * abliOps.Val[1],
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
                            odds = abliOps.ABILITY_LEVEL * abliOps.Val[1],
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
                            odds = abliOps.ABILITY_LEVEL * abliOps.Val[1],
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
                str_green = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1],
                agi_green = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1],
                int_green = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "狂牛身躯" or abliOps.Name == "鬼神头盔" or abliOps.Name == "擎天之柱") then
        hattr.set(u, 0, {str_green = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "猎豹一族" or abliOps.Name == "蝙蝠獠牙" or abliOps.Name == "鬼神荒芜") then
        hattr.set(u, 0, {agi_green = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "甜甜圈法杖" or abliOps.Name == "天师法剑" or abliOps.Name == "艾露尼之优雅") then
        hattr.set(u, 0, {int_green = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "一发长枪" or abliOps.Name == "打靶") then
        hattr.set(u, 0, {aim = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "致命抵抗") then
        hattr.set(
            u,
            0,
            {
                knocking_oppose = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1],
                violence_oppose = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "反伤抵抗") then
        hattr.set(u, 0, {hunt_rebound_oppose = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "变相移动") then
        hattr.set(u, 0, {move = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "专注护身") then
        hattr.set(u, 0, {defend = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
    elseif (abliOps.Name == "噩梦移植") then
        hattr.set(u, 0, {life = opt .. abliOps.ABILITY_LEVEL * abliOps.Val[1]})
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
                        val = abliOps.ABILITY_LEVEL * abliOps.Val[1]
                    }
                }
            }
        )
    elseif (abliOps.Name == "穿透之箭") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        attr = "defend",
                        odds = 100,
                        during = 3,
                        val = abliOps.ABILITY_LEVEL * abliOps.Val[1],
                        model = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                    }
                }
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
