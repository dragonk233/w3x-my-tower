require "game.scheduleFuncTowerSkillBook"

-- 使用物品
onUnitItemsUesd = function(evtData)
    local u = evtData.triggerUnit
    local it = evtData.triggerItem
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
        if (#game.playerTowerEffectModel > 0) then
            for _, v in ipairs(game.playerTowerEffectModel) do
                hskill.add(u, v, 0)
            end
        end
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
        if (abils == nil or table.len(abils) <= 0) then
            hmsg.echo00(p, "技能获取错误")
            return
        end
        local sites = {}
        if (itemSLK.ABILITY_COLOR == "yellow") then
            sites = {"S", "D"}
        elseif (itemSLK.ABILITY_COLOR == "blue") then
            sites = {"X", "C", "V"}
        elseif (itemSLK.ABILITY_COLOR == "purple") then
            sites = {"F"}
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
    elseif (itemSLK.I_TYPE == "effect_model" and itemSLK.INDEX == "超次元套装礼包") then
        local playerIndex = hplayer.index(p)
        --选择套装
        local tz = {}
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "tzgold") == true) then
            table.insert(tz, "金碧辉煌套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "tzdark") == true) then
            table.insert(tz, "迷幻黑紫套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "tzboold") == true) then
            table.insert(tz, "血色炽热套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "tzdragon") == true) then
            table.insert(tz, "青龙碧翼套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "tzghost") == true) then
            table.insert(tz, "邪鬼怨灵套装")
        end
        if (hdzapi.hasMallItem(hplayer.players[playerIndex], "tzfire") == true) then
            table.insert(tz, "炎炎焚烧套装")
        end
        if (#tz <= 0) then
            hmsg.echo00(hplayer.players[playerIndex], "您尚未拥有任何套装~")
            return
        end
        hdialog.create(
            hplayer.players[playerIndex],
            {
                title = "选择专属套装",
                buttons = tz
            },
            function(btnIdx)
                --清空之前的装扮
                if (#game.playerTowerEffectModel > 0) then
                    for _, v in ipairs(game.playerTowerEffectModel) do
                        hskill.del(game.playerTower[playerIndex], v, 0)
                    end
                    game.playerTowerEffectModel = {}
                end
                local tips
                if (btnIdx == "金碧辉煌套装") then
                    table.insert(game.playerTowerEffectModel, game.effectModel["金耀翅膀特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["金耀公正特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["金耀天堂特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["金耀精灵特效"].ABILITY_ID)
                    tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                elseif (btnIdx == "迷幻黑紫套装") then
                    table.insert(game.playerTowerEffectModel, game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                    tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                elseif (btnIdx == "血色炽热套装") then
                    table.insert(game.playerTowerEffectModel, game.effectModel["血色翅膀特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["血色漩涡特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["血色符文特效"].ABILITY_ID)
                    tips = "血色翅膀、赤红漩涡、祭奠符文"
                elseif (btnIdx == "青龙碧翼套装") then
                    table.insert(game.playerTowerEffectModel, game.effectModel["青空之翼特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["游龙欢悦特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["青龙吐息特效"].ABILITY_ID)
                    tips = "青空之翼、游龙欢悦、龙腾吐息"
                elseif (btnIdx == "邪鬼怨灵套装") then
                    table.insert(game.playerTowerEffectModel, game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["邪鬼符文特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                    tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                elseif (btnIdx == "炎炎焚烧套装") then
                    table.insert(game.playerTowerEffectModel, game.effectModel["炎炎旋风特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["炎炎领域特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                    table.insert(game.playerTowerEffectModel, game.effectModel["炎炎三球特效"].ABILITY_ID)
                    tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                end
                if (#game.playerTowerEffectModel > 0) then
                    for _, v in ipairs(game.playerTowerEffectModel) do
                        hskill.add(game.playerTower[playerIndex], v, 0)
                    end
                    hmsg.echo00(hplayer.players[playerIndex], "成功装扮了：" .. hColor.yellow(tips))
                end
            end
        )
    end
end
