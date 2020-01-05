setTowerSkillByBook = function(u, abliOps, opt)
    local optChar = "add"
    if (opt == "-") then
        optChar = "sub"
    end
    if (abliOps.Name == "战斗传统") then
        hattr.set(u, 0, { attack_white = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
    elseif (abliOps.Name == "魔法杖") then
        hattr.set(u, 0, { attack_green = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
    elseif (abliOps.Name == "战争武斗") then
        hattr.set(u, 0, { attack_white = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
    elseif (abliOps.Name == "智勇双全") then
        hattr.set(u, 0, { attack_green = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
    elseif (abliOps.Name == "强击之箭") then
        hattr.set(u, 0, { attack_white = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
        hattr.set(u, 0, { attack_green = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[2]) })
    elseif (abliOps.Name == "致命一击") then
        hattr.set(u, 0, { knocking_odds = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
        hattr.set(u, 0, { knocking = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[2]) })
    elseif (abliOps.Name == "魔法回应") then
        hattr.set(u, 0, { violence_odds = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
        hattr.set(u, 0, { violence = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[2]) })
    elseif (abliOps.Name == "心灵之火") then
        hattr.set(u, 0, { attack_speed = opt .. (abliOps.ABILITY_LEVEL * abliOps.Val[1]) })
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
