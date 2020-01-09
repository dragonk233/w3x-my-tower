-- 死亡
towerShadowDead = function()
    local shadow = hevent.getTriggerUnit()
    local u = hevent.getKiller()
    local shadowName = hunit.getName(shadow)
    local shadowPName = cj.GetPlayerName(hplayer.players[hunit.getUserData(shadow)])
    if (u ~= nil) then
        local killerName = cj.GetPlayerName(cj.GetOwningPlayer(u))
        hmsg.echo(
            hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被" .. hColor.green(killerName) .. "干掉了~"
        )
    else
        hmsg.echo(hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被干掉了~")
    end
    hunit.del(shadow, 3)
end
