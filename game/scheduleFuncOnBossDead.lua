-- boss死亡
bossDead = function()
    game.currentMon = game.currentMon - 1
    local u = hevent.getKiller()
    if (u ~= nil) then
        if (game.rule.cur == "yb") then
            haward.forUnitExp(u, 200 * game.rule.yb.wave)
        elseif (game.rule.cur == "hz") then
            haward.forUnitExp(u, 150 * game.rule.hz.wave)
        else
            haward.forUnitExp(u, 500)
        end
    end
end
