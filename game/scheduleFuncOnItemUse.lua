-- 使用物品
onUnitItemsUesd = function()
    local u = hevent.getTriggerUnit()
    local it = hevent.getTriggerItem()
    local itId = hitem.getId(it)
    local slk = hslk_global.itemsKV[itId]
    local p = cj.GetOwningPlayer(u)
    if (slk == nil or slk.INDEX == nil) then
        hmsg.echo00(p, "slk获取错误")
        return
    end
    local abils = game.thisOptionAbility[slk.INDEX]
    if (abils == nil or hSys.getTableLen(abils) <= 0) then
        hmsg.echo00(p, "技能获取错误")
        return
    end
    local sites = {}
    if (slk.ABILITY_COLOR == "yellow") then
        sites = {"A", "S", "D", "F"}
    elseif (slk.ABILITY_COLOR == "red") then
        sites = {"Z", "X", "C", "V"}
    end
    local playerIndex = hplayer.index(p)
    local btns = {}
    for k, v in pairs(sites) do
        if (game.towersAbilities[playerIndex][v].level == nil) then
            btns[v] = "[" .. v .. "]-[" .. game.towersAbilities[playerIndex][v].name .. "]"
        else
            btns[v] =
                "[" ..
                v ..
                    "]-[" ..
                        game.towersAbilities[playerIndex][v].name ..
                            "][" .. game.towersAbilities[playerIndex][v].level .. "级]"
        end
    end
    hdialog.create(
        p,
        {
            title = slk.DIALOG_TITLE,
            buttons = btns
        },
        function(btnIdx)
            hmsg.echo00(p, "你选择了" .. btnIdx .. "位置，来学习" .. abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name)
            hskill.del(game.playerTower[playerIndex], game.towersAbilities[playerIndex][btnIdx].ability_id, 0)
            hskill.add(game.playerTower[playerIndex], abils[btnIdx].ABILITY_ID)
            game.towersAbilities[playerIndex][btnIdx] = {
                ability_id = abils[btnIdx].ABILITY_ID,
                level = abils[btnIdx].ABILITY_LEVEL,
                name = abils[btnIdx].name
            }
        end
    )
end
