-- boss死亡
bossDead = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        if (game.rule.cur == "yb") then
            haward.forUnitExp(u, 200 * game.rule.yb.wave)
        elseif (game.rule.cur == "hz") then
            haward.forUnitExp(u, 150 * game.rule.hz.wave)
        else
            haward.forUnitExp(u, 500)
        end
        local killerName = cj.GetPlayerName(cj.GetOwningPlayer(u))
        local bossName = hunit.getName(evtData.triggerUnit)
        if (killerName ~= nil) then
            hmsg.echo(hColor.sky(killerName) .. "干掉了BOSS[" .. hColor.yellow(bossName) .. "]")
        end
    end
    hunit.del(evtData.triggerUnit, 3)
end
