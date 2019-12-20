-- 敌军受到攻击
enemyBeDamage = function()
    local u = hevent.getTriggerUnit()
    if (his.alive(u) and cj.GetRandomInt(1, 5) == 3) then
        htextTag.style(htextTag.create2Unit(
                u,
                game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)],
                10.00,
                "",
                1,
                1.1,
                11.00
        ), "scale", cj.GetRandomReal(-0.05, 0.05), 0)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        hattr.set(u, 2.50, {
            move = "+70"
        })
    end
end

-- 坟头草
enemyGrass = function(triggerUnit)
    local x = cj.GetUnitX(triggerUnit)
    local y = cj.GetUnitY(triggerUnit)
    if (cj.GetRandomInt(1, 15) == 4) then
        htime.setTimeout(cj.GetRandomReal(8, 25), nil, function()
            hunit.create({
                whichPlayer = hplayer.player_passive,
                unitId = game.thisUnits["河草"].unitID,
                qty = 1,
                x = x,
                y = y,
                during = cj.GetRandomReal(20, 45)
            })
        end)
    end
end

-- 敌军死亡HZ
enemyDeadHZ = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        haward.forGroupExp(u, 15 * game.rule.hz.wave)
    end
    enemyGrass(hevent.getTriggerUnit())
end

-- 敌军死亡DK
enemyDeadDK = function()
    local u = hevent.getKiller()
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 25 * game.rule.dk.wave[pi]
        local gold = 3 * game.rule.dk.wave[pi]
        haward.forGroup(u, exp, gold, 0)
        game.rule.dk.playerQty[pi] = game.rule.dk.playerQty[pi] + 1
        if (game.rule.dk.playerQty[pi] >= game.rule.dk.perWaveQty) then
            game.rule.dk.playerQty[pi] = 0
            game.rule.dk.wave[pi] = game.rule.dk.wave[pi] + 1
            game.rule.dk.mon[pi] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].unitID
            hmsg.echo(
                    cj.GetPlayerName(hplayer.players[pi])
                            .. "达到了|cffffff00第"
                            .. game.rule.dk.wave[pi]
                            .. "级|r，其他人小心啦~")
        end
    end
    local ui = game.rule.dk.monData[cj.GetTriggerUnit()].pathIndex
    game.rule.dk.monLimit[ui] = game.rule.dk.monLimit[ui] - 1
    enemyGrass()
end


-- 出兵
enemyGenHZ = function(waiting)
    htime.setTimeout(waiting, "第" .. game.rule.hz.wave .. "波", function(t, td)
        htime.delDialog(td)
        htime.delTimer(t)
        hsound.sound2Unit(cg.gg_snd_effect_0004, 100, whichUnit)
        local count = game.rule.hz.perWaveQty
        htime.setInterval(2.00, nil, function(t, td)
            count = count - 1
            if (count <= 0) then
                htime.delDialog(td)
                htime.delTimer(t)
                local gold = hplayer.qty_current * game.rule.hz.wave * 50
                haward.forPlayer(gold, 0)
                hmsg.echo("通过了|cffffff00第" .. game.rule.hz.wave .. "波|r，所有玩家平分|cffffff00" .. gold .. "金|r奖励")
                game.rule.hz.wave = game.rule.hz.wave + 1
                for i = 1, hplayer.qty_max, 1 do
                    if (his.playing(hplayer.players[i])) then
                        hsound.sound2Player(cg.gg_snd_coin_1, hplayer.players[i])
                        hmsg.echo(hplayer.getSelection(hplayer.players[i]))
                    end
                end
                enemyGenHZ(5)
                return
            end
            for k, v in pairs(game.pathPoint) do
                if (his.playing(hplayer.players[k])) then
                    local u = hemeny.create({
                        unitId = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].unitID,
                        qty = 1,
                        x = v[1][1],
                        y = v[1][2],
                    })
                    cj.SetUnitPathing(u, false)
                    hattr.set(u, 0, {
                        life = "=" .. (10 * game.rule.hz.wave),
                        move = "=180"
                    })
                    hevent.onBeDamage(u, enemyBeDamage)
                    hevent.onDead(u, enemyDeadHZ)
                end
            end
        end)
    end)
end

enemyGenDK = function(waiting)
    htime.setTimeout(waiting, "请准备好坑朋友", function(t, td)
        htime.delDialog(td)
        htime.delTimer(t)
        for i = 1, hplayer.qty_max, 1 do
            if (his.playing(hplayer.players[i])) then
                game.rule.dk.playerQty[i] = 0
                game.rule.dk.wave[i] = 1
                game.rule.dk.mon[i] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].unitID
                game.rule.dk.monLimit[i] = 0
            end
        end
        htime.setInterval(2.00, nil, function()
            for k, v in pairs(game.pathPoint) do
                if (his.playing(hplayer.players[k])) then
                    if (game.rule.dk.monLimit[k] < game.rule.dk.perWaveQty) then
                        game.rule.dk.monLimit[k] = game.rule.dk.monLimit[k] + 1
                        local u = hemeny.create({
                            unitId = game.rule.dk.mon[k],
                            qty = 1,
                            x = v[1][1],
                            y = v[1][2],
                        })
                        cj.SetUnitPathing(u, false)
                        hattr.set(u, 0, {
                            life = "=" .. (20 * game.rule.dk.wave[k]),
                            move = "=160"
                        })
                        game.rule.dk.monData[u] = {
                            pathIndex = k
                        }
                        hevent.onBeDamage(u, enemyBeDamage)
                        hevent.onDead(u, enemyDeadDK)
                    end
                end
            end
        end)
    end)
end

getNextRect = function(current)
    local next = -1
    local realEnd = 4
    for i = 1, hplayer.qty_max, 1 do
        if (his.playing(hplayer.players[i])) then
            realEnd = i
        end
    end
    for i = 1, hplayer.qty_max, 1 do
        if (his.playing(hplayer.players[i])) then
            if (next == -1) then
                if (current == realEnd or i > current) then
                    next = i
                end
            end
        end
    end
    return next
end

-- 兵塔升级
updateMyTower = function()
    local u = hevent.getTriggerUnit()
    local uid = hSys.getObjChar(cj.GetUnitTypeId(u))
    local lv = cj.GetHeroLevel(u)
    local diffLv = cj.I2R(lv - hhero.getPrevLevel(u))
    local tlv = hslk_global.unitsKV[uid].towerLevel
    local attackWhite = hslk_global.unitsKV[uid].attackWhite
    local attackGreen = hslk_global.unitsKV[uid].attackGreen
    local percent = 0
    if (tlv == "E") then
        percent = 0.10
    elseif (tlv == "D") then
        percent = 0.15
    elseif (tlv == "C") then
        percent = 0.20
    elseif (tlv == "B") then
        percent = 0.25
    elseif (tlv == "A") then
        percent = 0.30
    elseif (tlv == "S") then
        percent = 0.40
    elseif (tlv == "SS") then
        percent = 0.50
    elseif (tlv == "SSS") then
        percent = 0.75
    end
    attackWhite = diffLv * attackWhite * percent
    attackGreen = diffLv * attackGreen * percent
    hattr.set(u, 0, {
        attack_white = "+" .. attackWhite,
        attack_green = "+" .. attackGreen,
    })
    hsound.sound2Unit(cg.gg_snd_level_up, 100, whichUnit)
    htextTag.style(htextTag.create2Unit(
            u,
            "升级 ↑",
            13.00,
            "ffff00",
            1,
            2.0,
            10.00
    ), "scale", 0, 0.1)
end

-- 创造兵塔
createMyTower = function(playerIndex, towerId)
    if (playerIndex == nil or towerId == nil) then
        print('createMyTower wtf')
        return
    end
    if (his.playing(hplayer.players[playerIndex])) then
        -- 如果有上一个单位，把上一个兵塔暂时隐藏，后面取它的物品
        if (game.playerTower[playerIndex] ~= nil) then
            cj.ShowUnit(game.playerTower[playerIndex], false)
        end
        local u = hunit.create({
            whichPlayer = hplayer.players[playerIndex],
            unitId = towerId,
            qty = 1,
            x = game.towerPoint[playerIndex][1],
            y = game.towerPoint[playerIndex][2],
        })
        hhero.setIsHero(u, true)
        hevent.onLevelUp(u, updateMyTower)
        -- 如果有上一个单位，把上一个兵塔的物品给予新的兵塔，并删除它
        if (game.playerTower[playerIndex] ~= nil) then
            hitem.copy(game.playerTower[playerIndex], u)
            hunit.del(game.playerTower[playerIndex], 0)
        end
        game.playerTower[playerIndex] = u
        cj.PingMinimapEx(game.towerPoint[playerIndex][1], game.towerPoint[playerIndex][2], 10, 255, 255, 255, true)
        hmsg.echo(cj.GetPlayerName(hplayer.players[playerIndex]) .. "召唤了兵塔：[" .. hslk_global.unitsKV[towerId].Name .. "]")
        --
        local tlv = hslk_global.unitsKV[towerId].towerLevel
        local life = 100
        local mana = 100
        local manaBack = 1
        if (tlv == "E") then
            life = 100
            mana = 100
            manaBack = 2
        elseif (tlv == "D") then
            life = 200
            mana = 200
            manaBack = 3
        elseif (tlv == "C") then
            life = 400
            mana = 300
            manaBack = 4
        elseif (tlv == "B") then
            life = 600
            mana = 400
            manaBack = 5
        elseif (tlv == "A") then
            life = 900
            mana = 500
            manaBack = 6
        elseif (tlv == "S") then
            life = 1500
            mana = 750
            manaBack = 10
        elseif (tlv == "SS") then
            life = 3000
            mana = 1000
            manaBack = 15
        elseif (tlv == "SSS") then
            life = 7500
            mana = 1500
            manaBack = 20
        end
        hattr.set(u, 0, {
            life = "=" .. life,
            mana = "=" .. mana,
            manaBack = "=" .. manaBack,
            attack_white = "+" .. hslk_global.unitsKV[towerId].attackWhite,
            attack_green = "+" .. hslk_global.unitsKV[towerId].attackGreen,
        })
        hskill.add(u, game.thisTowerPowerAbilities[hslk_global.unitsKV[towerId].towerPower].abilityID, 0)
        for _, v in pairs(game.thisEmptyAbilities) do
            hskill.add(u, v.abilityID, 0)
        end
    end
end

-- 创造信使
createMyCourier = function(playerIndex, courierId)
    if (playerIndex == nil or courierId == nil) then
        print('createMyCourier wtf')
        return
    end
    if (his.playing(hplayer.players[playerIndex])) then
        -- 如果有上一个单位，把上一个信使暂时隐藏，后面取它的物品
        if (game.playerCourier[playerIndex] ~= nil) then
            cj.ShowUnit(game.playerCourier[playerIndex], false)
        end
        local u = hunit.create({
            whichPlayer = hplayer.players[playerIndex],
            unitId = courierId,
            qty = 1,
            x = game.courierPoint[playerIndex][1],
            y = game.courierPoint[playerIndex][2],
        })
        -- 如果有上一个单位，把上一个信使的物品给予新的信使，并删除它
        if (game.playerCourier[playerIndex] ~= nil) then
            hitem.copy(game.playerCourier[playerIndex], u)
            hunit.del(game.playerCourier[playerIndex], 0)
        end
        game.playerCourier[playerIndex] = u
        cj.PanCameraToTimed(game.courierPoint[playerIndex][1], game.courierPoint[playerIndex][2], 0.60)
    end
end
