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
    if (abliOps.Name == "战斗传统") then
        hattr.set(u, 0, {attack_white = "+" .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "魔法杖") then
        hattr.set(u, 0, {attack_green = "+" .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    end
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
    if (abliOps.Name == "战斗传统") then
        hattr.set(u, 0, {attack_white = "-" .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    elseif (abliOps.Name == "魔法杖") then
        hattr.set(u, 0, {attack_green = "-" .. (abliOps.ABILITY_LEVEL * abliOps.Val[1])})
    end
end
