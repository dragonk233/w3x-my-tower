-- 敌军死亡
enemyDeadHZ = function()
    local u = hevent.getKiller()
    haward.forGroupExp(u, 5 * game.rule.hz.wave)
end

-- 出兵
enemyGenHZ = function(waiting)
    htime.setTimeout(waiting, "第" .. game.rule.hz.wave .. "波", function(t, td)
        htime.delDialog(td)
        htime.delTimer(t)
        local count = game.rule.hz.perWaveQty
        htime.setInterval(1.80, nil, function(t, td)
            count = count - 1
            if (count <= 0) then
                htime.delDialog(td)
                htime.delTimer(t)
                local gold = hplayer.qty_current * game.rule.hz.wave * 50
                game.rule.hz.wave = game.rule.hz.wave + 1
                haward.forPlayer(gold, 0)
                hmsg.echo("到达了第" .. game.rule.hz.wave .. "波，所有玩家平分|cffffff00" .. gold .. "金|r奖励")
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
                    })
                    hevent.onDead(u, enemyDeadHZ)
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
            life = 1000
            mana = 100
            manaBack = 2
        elseif (tlv == "D") then
            life = 2000
            mana = 200
            manaBack = 3
        elseif (tlv == "C") then
            life = 3000
            mana = 300
            manaBack = 4
        elseif (tlv == "B") then
            life = 4000
            mana = 400
            manaBack = 5
        elseif (tlv == "A") then
            life = 5000
            mana = 500
            manaBack = 6
        elseif (tlv == "S") then
            life = 10000
            mana = 750
            manaBack = 10
        elseif (tlv == "SS") then
            life = 25000
            mana = 1000
            manaBack = 15
        elseif (tlv == "SSS") then
            life = 50000
            mana = 1500
            manaBack = 20
        end
        hattr.set(u, 0, {
            life = "=" .. life,
            mana = "=" .. mana,
            manaBack = "=" .. manaBack,
        })
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
