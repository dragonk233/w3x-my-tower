MAYBE_AI = {
    --物品的挂
    item = function(playerIndex, it, type)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            local itId = hitem.getId(it)
            local itemSLK = hslk_global.itemsKV[itId]
            hitem.del(it, 0)
            if (type == "book") then --学书
                local sites = {}
                if (itemSLK.ABILITY_COLOR == "yellow") then
                    sites = {"S", "D"}
                elseif (itemSLK.ABILITY_COLOR == "blue") then
                    sites = {"X", "C", "V"}
                elseif (itemSLK.ABILITY_COLOR == "purple") then
                    sites = {"F"}
                end
                local emptySite = nil
                for k, v in ipairs(sites) do
                    if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                        if (emptySite == nil) then
                            emptySite = v
                            break
                        end
                    end
                end
                if (emptySite == nil and math.random(1, 2) == 1) then
                    emptySite = table.random(sites)
                end
                if (emptySite ~= nil) then
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        emptySite,
                        game.towersAbilities[playerIndex][emptySite]
                    )
                    local abils = game.thisOptionAbility[itemSLK.INDEX]
                    addTowerSkillByBook(game.playerTower[playerIndex], emptySite, abils[emptySite])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                else
                    hplayer.addGold(hplayer.players[playerIndex], 100)
                end
            elseif (type == "stone") then
                local linkSite = nil
                for i = 1, 4, 1 do
                    local n = hunit.getName(game.playerTowerLink[playerIndex][i].unit)
                    if (n == "空位") then
                        linkSite = i
                        break
                    end
                end
                if (linkSite ~= nil) then
                    --补充空位
                    local u =
                        createMyTowerLink(
                        playerIndex,
                        linkSite,
                        game.towers[itemSLK.INDEX].UNIT_ID,
                        game.playerTowerLink[playerIndex][linkSite].tower_level
                    )
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                            "设置了核心：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                else
                    local marks = {
                        hunit.getSlk(game.playerTower[playerIndex]).MARK or 0,
                        game.playerTowerLink[playerIndex][1].mark or 0,
                        game.playerTowerLink[playerIndex][2].mark or 0,
                        game.playerTowerLink[playerIndex][3].mark or 0,
                        game.playerTowerLink[playerIndex][4].mark or 0
                    }
                    local min = game.towers[itemSLK.INDEX].MARK
                    local mini = -1
                    for k, v in ipairs(marks) do
                        if (v < min) then
                            min = v
                            mini = k
                            break
                        end
                    end
                    if (mini >= 1 and mini <= 5) then
                        mini = mini - 1
                        if (mini == 0) then
                            local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
                            hmsg.echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "召唤了兵塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        else
                            local u =
                                createMyTowerLink(
                                playerIndex,
                                mini,
                                game.towers[itemSLK.INDEX].UNIT_ID,
                                game.playerTowerLink[playerIndex][mini].tower_level
                            )
                            hmsg.echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "设置了核心：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        end
                    else
                        --吃石头升级
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            2 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    end
                end
            end
        end
    end,
    --信使的挂(不需要考虑计时器重复，因为AI不会换信使)
    courier = function(playerIndex)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            --装扮
            htime.setInterval(
                math.random(150, 250),
                function(t, td)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delDialog(td)
                        htime.delTimer(t)
                        return
                    end
                    if (game.playerTowerEffectModel[playerIndex] == nil) then
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    --清空之前的装扮
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.del(game.playerTower[playerIndex], v, 0)
                        end
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    local models = {
                        "金碧辉煌套装",
                        "迷幻黑紫套装",
                        "血色炽热套装",
                        "青龙碧翼套装",
                        "邪鬼怨灵套装",
                        "炎炎焚烧套装",
                        "出云剑仙套装"
                    }
                    local btnIdx = models[math.random(1, #models)]
                    local tips
                    if (btnIdx == "金碧辉煌套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀公正特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀天堂特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀精灵特效"].ABILITY_ID)
                        tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 40, 30)
                    elseif (btnIdx == "迷幻黑紫套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                        tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 35, 30)
                    elseif (btnIdx == "血色炽热套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色漩涡特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色符文特效"].ABILITY_ID)
                        tips = "血色翅膀、赤红漩涡、祭奠符文"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 28, 30)
                    elseif (btnIdx == "青龙碧翼套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青空之翼特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["游龙欢悦特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青龙吐息特效"].ABILITY_ID)
                        tips = "青空之翼、游龙欢悦、龙腾吐息"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 24, 30)
                    elseif (btnIdx == "邪鬼怨灵套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼符文特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                        tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 18, 30)
                    elseif (btnIdx == "炎炎焚烧套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎旋风特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎领域特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎三球特效"].ABILITY_ID)
                        tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 15, 30)
                    elseif (btnIdx == "出云剑仙套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞剑特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云气场特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞龙特效"].ABILITY_ID)
                        tips = "盘旋飞剑、灵剑气场、飞龙在天"
                        hplayer.addGoldRatio(hplayer.players[playerIndex], 10, 30)
                    end
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.add(game.playerTower[playerIndex], v, 0)
                        end
                        hmsg.echo(cj.GetPlayerName(hplayer.players[playerIndex]) .. "装扮了：" .. hColor.yellow(tips))
                    end
                end
            )
            --到处乱走
            htime.setInterval(
                math.random(4, 13),
                function(t, td)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delDialog(td)
                        htime.delTimer(t)
                        return
                    end
                    local dist =
                        math.getDistanceBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                    local deg = math.random(0, 360)
                    local dis = math.random(100, 300)
                    if (dist > 1200) then
                        deg = math.getDegBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                        dis = math.random(500, 1000)
                    end
                    local xy =
                        math.polarProjection(
                        cj.GetUnitX(game.playerCourier[playerIndex]),
                        cj.GetUnitY(game.playerCourier[playerIndex]),
                        dis,
                        deg
                    )
                    cj.IssuePointOrderById(game.playerCourier[playerIndex], 851986, xy.x, xy.y)
                end
            )
            --技能
            htime.setInterval(
                math.random(4, 7),
                function(t, td)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delDialog(td)
                        htime.delTimer(t)
                        return
                    end
                    local gold = hplayer.getGold(hplayer.players[playerIndex])
                    if (gold >= 50000 and math.random(1, 6) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 50000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            105 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 10000 and math.random(1, 6) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 10000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            23 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 1000 and game.playerTowerLevel[playerIndex] < 9 and math.random(1, 6) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 1000)
                        subTowerLevel(playerIndex)
                        addTowerLevel(playerIndex)
                    elseif (math.random(1, 2) == 1) then
                        local curWave = 1
                        if (game.rule.cur == "yb") then
                            curWave = game.rule.yb.wave
                        elseif (game.rule.cur == "hz") then
                            curWave = game.rule.hz.wave
                        elseif (game.rule.cur == "dk") then
                            curWave = game.rule.dk.wave[playerIndex]
                        end
                        local need = 100 * curWave
                        if (gold >= need) then
                            hplayer.subGold(hplayer.players[playerIndex], need)
                            local targetTPow = getTowerPowLevel(curWave)
                            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                                local it =
                                    hitem.create(
                                    {
                                        itemId = rand.ITEM_ID,
                                        x = cj.GetUnitX(game.playerCourier[playerIndex]),
                                        y = cj.GetUnitY(game.playerCourier[playerIndex])
                                    }
                                )
                                MAYBE_AI.item(playerIndex, it, "stone")
                            end
                        end
                    end
                end
            )
        end
    end
}
