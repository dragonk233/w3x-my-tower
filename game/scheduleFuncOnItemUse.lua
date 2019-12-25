-- 使用物品
onUnitItemsUesd = function()
    local u = hevent.getTriggerUnit()
    local it = hevent.getTriggerItem()
    local itId = hitem.getId(it)
    local itemSLK = hslk_global.itemsKV[itId]
    local p = cj.GetOwningPlayer(u)
    if (itemSLK == nil or itemSLK.INDEX == nil) then
        hmsg.echo00(p, "slk获取错误")
        return
    end
    if (itemSLK.I_TYPE == nil) then
        hmsg.echo00(p, "物品I类型获取错误")
        return
    end
    if (itemSLK.I_TYPE == "courier") then
        print_r(game.courier[itemSLK.INDEX])
    elseif (itemSLK.I_TYPE == "ability") then
        local abils = game.thisOptionAbility[itemSLK.INDEX]
        if (abils == nil or hSys.getTableLen(abils) <= 0) then
            hmsg.echo00(p, "技能获取错误")
            return
        end
        local sites = {}
        if (itemSLK.ABILITY_COLOR == "yellow") then
            sites = {"A", "S", "D", "F"}
        elseif (itemSLK.ABILITY_COLOR == "red") then
            sites = {"Z", "X", "C", "V"}
        end
        local playerIndex = hplayer.index(p)
        local btns = {}
        local emptySite = nil
        for k, v in ipairs(sites) do
            if (game.towersAbilities[playerIndex][v].level == nil) then
                if (emptySite == nil) then
                    emptySite = v
                    break
                end
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" .. v .. "]-[" .. hColor.grey(game.towersAbilities[playerIndex][v].name) .. "]"
                    )
                }
            else
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" ..
                            v ..
                                "]-[" ..
                                    game.towersAbilities[playerIndex][v].name ..
                                        "][" .. game.towersAbilities[playerIndex][v].level .. "级]"
                    )
                }
            end
        end
        if (emptySite == nil) then
            hdialog.create(
                p,
                {
                    title = itemSLK.DIALOG_TITLE,
                    buttons = btns
                },
                function(btnIdx)
                    hmsg.echo00(
                        p,
                        "你选择了[" ..
                            hColior.yellow(btnIdx) ..
                                "]位置，来学习[" ..
                                    hColior.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
                    )
                    hskill.del(game.playerTower[playerIndex], game.towersAbilities[playerIndex][btnIdx].ability_id, 0)
                    hskill.add(game.playerTower[playerIndex], abils[btnIdx].ABILITY_ID)
                    game.towersAbilities[playerIndex][btnIdx] = {
                        ability_id = abils[btnIdx].ABILITY_ID,
                        level = abils[btnIdx].ABILITY_LEVEL,
                        name = abils[btnIdx].Name
                    }
                end
            )
        else
            local btnIdx = emptySite
            hmsg.echo00(
                p,
                "兵塔的[" ..
                    hColior.yellow(btnIdx) ..
                        "]位置，学习了[" .. hColior.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
            )
            hskill.del(game.playerTower[playerIndex], game.towersAbilities[playerIndex][btnIdx].ability_id, 0)
            hskill.add(game.playerTower[playerIndex], abils[btnIdx].ABILITY_ID)
            game.towersAbilities[playerIndex][btnIdx] = {
                ability_id = abils[btnIdx].ABILITY_ID,
                level = abils[btnIdx].ABILITY_LEVEL,
                name = abils[btnIdx].Name
            }
        end
    end
end
