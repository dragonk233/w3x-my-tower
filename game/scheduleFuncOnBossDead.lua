-- boss死亡
bossDead = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        if (game.rule.cur == "yb") then
            haward.forGroupExp(u, 300 * game.rule.yb.wave)
        elseif (game.rule.cur == "hz") then
            haward.forGroupExp(u, 275 * game.rule.hz.wave)
        else
            haward.forGroupExp(u, 1000)
        end
        local killerName = cj.GetPlayerName(cj.GetOwningPlayer(u))
        local bossName = hunit.getName(evtData.triggerUnit)
        if (killerName ~= nil) then
            hmsg.echo(hColor.sky(killerName) .. "干掉了" .. hColor.yellow(bossName))
        end
    end
    hunit.del(evtData.triggerUnit, 3)
end
