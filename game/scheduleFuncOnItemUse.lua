require "game.scheduleFuncTowerSkillBook"

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
    if (itemSLK.I_TYPE == "tower") then
        local playerIndex = hplayer.index(p)
        local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
        hmsg.echo(hColor.sky(cj.GetPlayerName(p)) .. "召唤了兵塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]")
    elseif (itemSLK.I_TYPE == "courier") then
        local playerIndex = hplayer.index(p)
        local u = createMyCourier(playerIndex, game.courier[itemSLK.INDEX].UNIT_ID)
        hmsg.echo(
            hColor.sky(cj.GetPlayerName(p)) .. "召唤了信使：[" .. hColor.yellow(game.courier[itemSLK.INDEX].Name) .. "]"
        )
        if (u ~= nil and cj.GetLocalPlayer() == p) then
            cj.ClearSelection()
            cj.SelectUnit(u, true)
        end
    elseif (itemSLK.I_TYPE == "ability") then
        local abils = game.thisOptionAbility[itemSLK.INDEX]
        if (abils == nil or hSys.getTableLen(abils) <= 0) then
            hmsg.echo00(p, "技能获取错误")
            return
        end
        local sites = {}
        if (itemSLK.ABILITY_COLOR == "yellow") then
            sites = { "S", "D" }
        elseif (itemSLK.ABILITY_COLOR == "blue") then
            sites = { "X", "C", "V" }
        elseif (itemSLK.ABILITY_COLOR == "purple") then
            sites = { "F" }
        end
        local playerIndex = hplayer.index(p)
        local btns = {}
        local emptySite = nil
        for k, v in ipairs(sites) do
            if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                if (emptySite == nil) then
                    emptySite = v
                    break
                end
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" .. v .. "]-[" .. hColor.grey(game.towersAbilities[playerIndex][v].Name) .. "]"
                    )
                }
            else
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" ..
                            v ..
                            "]-[" ..
                            game.towersAbilities[playerIndex][v].Name ..
                            "][" .. game.towersAbilities[playerIndex][v].ABILITY_LEVEL .. "级]"
                    )
                }
            end
        end
        if (emptySite == nil) then
            table.insert(
                btns,
                {
                    value = 512,
                    label = "[ESC][" .. hColor.grey("废弃技能书") .. "]"
                }
            )
            hdialog.create(
                p,
                {
                    title = itemSLK.DIALOG_TITLE,
                    buttons = btns
                },
                function(btnIdx)
                    if (btnIdx == 512) then
                        hmsg.echo00(p, "技能书被扔了")
                        return
                    end
                    hmsg.echo00(
                        p,
                        "你选择了[" ..
                            hColor.yellow(btnIdx) ..
                            "]位置，来学习[" ..
                            hColor.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
                    )
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        btnIdx,
                        game.towersAbilities[playerIndex][btnIdx]
                    )
                    addTowerSkillByBook(game.playerTower[playerIndex], btnIdx, abils[btnIdx])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                end
            )
        else
            local btnIdx = emptySite
            hmsg.echo00(
                p,
                "兵塔自动挑选了[" ..
                    hColor.yellow(btnIdx) ..
                    "]位置，学习了[" .. hColor.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
            )
            delTowerSkillByBook(game.playerTower[playerIndex], btnIdx, game.towersAbilities[playerIndex][btnIdx])
            addTowerSkillByBook(game.playerTower[playerIndex], btnIdx, abils[btnIdx])
            if (itemSLK.ABILITY_COLOR == "yellow") then
                heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
            elseif (itemSLK.ABILITY_COLOR == "blue") then
                heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
            elseif (itemSLK.ABILITY_COLOR == "purple") then
                heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
            end
        end
    end
end
