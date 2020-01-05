addTowerSkillsx = function(u)
    if (hskill.has(u, game.towersSkillKV["铁壁"])) then
        hattr.set(u, 0, { defend = "+10" })
    end
end
