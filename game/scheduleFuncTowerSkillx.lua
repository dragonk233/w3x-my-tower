addTowerSkillsx = function(u)
    for k, v in ipairs(game.towersOriginSkill) do
        local abid = v.ABILITY_ID
        if (abid ~= nil and v.Val ~= nil) then
            local Val = v.Val
            if (hskill.has(u, abid)) then
                hattr.set(u, 0, {defend = "+" .. Val[1]})
            end
        end
    end
end
