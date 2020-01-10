require "game.scheduleFuncGetPow"
require "game.scheduleFuncOnItemUse"
require "game.scheduleFuncOnCourierSkillUse"
require "game.scheduleFuncOnTowerAttack"
require "game.scheduleFuncOnTowerLevelUp"
require "game.scheduleFuncTowerSkillRace"
require "game.scheduleFuncTowerSkillx"
require "game.scheduleFuncEnemyGenNormal"

getNextRect = function(current)
    local next = -1
    local realEnd = 4
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.player_status.gaming == hplayer.getStatus(hplayer.players[i])) then
            realEnd = i
        end
    end
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.player_status.gaming == hplayer.getStatus(hplayer.players[i])) then
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
updateMyTower = function(evtData)
    local u = evtData.triggerUnit
    local uid = string.id2char(cj.GetUnitTypeId(u))
    local lv = cj.GetHeroLevel(u)
    local diffLv = cj.I2R(lv - hhero.getPrevLevel(u))
    local tlv = hslk_global.unitsKV[uid].TOWER_POWER
    local attackWhite = hslk_global.unitsKV[uid].ATTACK_WHITE
    local attackGreen = hslk_global.unitsKV[uid].ATTACK_GREEN
    local percent = 0
    if (tlv == "E") then
        percent = 0.10
    elseif (tlv == "D") then
        percent = 0.12
    elseif (tlv == "C") then
        percent = 0.15
    elseif (tlv == "B") then
        percent = 0.19
    elseif (tlv == "A") then
        percent = 0.24
    elseif (tlv == "S") then
        percent = 0.30
    elseif (tlv == "SS") then
        percent = 0.37
    elseif (tlv == "SSS") then
        percent = 0.45
    end
    attackWhite = diffLv * attackWhite * percent
    attackGreen = diffLv * attackGreen * percent
    hattr.set(
        u,
        0,
        {
            attack_white = "+" .. attackWhite,
            attack_green = "+" .. attackGreen
        }
    )
    hsound.sound2Unit(cg.gg_snd_level_up, 100, whichUnit)
    htextTag.style(htextTag.create2Unit(u, "升级 ↑", 12.00, "ffff00", 1, 2.0, 10.00), "scale", 0, 0.1)
end

-- 创造兵塔
createMyTower = function(playerIndex, towerId)
    if (playerIndex == nil or towerId == nil) then
        print("createMyTower wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        if (game.towersAbilities[playerIndex] == nil) then
            game.towersAbilities[playerIndex] = {}
        end
        local isFirst = false
        if (game.playerTower[playerIndex] == nil) then
            isFirst = true
        end
        -- 如果有上一个单位，把上一个兵塔暂时隐藏，后面复制技能，取它的物品
        local prevHeroLevel = 1
        if (isFirst == false) then
            prevHeroLevel = cj.GetHeroLevel(game.playerTower[playerIndex]) + 1
            cj.ShowUnit(game.playerTower[playerIndex], false)
        end
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = towerId,
                qty = 1,
                x = game.towerPoint[playerIndex][1],
                y = game.towerPoint[playerIndex][2]
            }
        )
        hhero.setIsHero(u, true)
        --属性
        local tlv = hslk_global.unitsKV[towerId].towerLevel
        local life = 100
        local mana = 100
        local manaBack = 1
        if (tlv == "E") then
            life = 250
            mana = 100
            manaBack = 2
        elseif (tlv == "D") then
            life = 300
            mana = 200
            manaBack = 3
        elseif (tlv == "C") then
            life = 350
            mana = 300
            manaBack = 4
        elseif (tlv == "B") then
            life = 400
            mana = 400
            manaBack = 5
        elseif (tlv == "A") then
            life = 500
            mana = 500
            manaBack = 6
        elseif (tlv == "S") then
            life = 600
            mana = 750
            manaBack = 10
        elseif (tlv == "SS") then
            life = 750
            mana = 1000
            manaBack = 15
        elseif (tlv == "SSS") then
            life = 1000
            mana = 1500
            manaBack = 20
        end
        hattr.set(
            u,
            0,
            {
                move = "=0",
                life = "=" .. life,
                mana = "=" .. mana,
                manaBack = "=" .. manaBack,
                attack_white = "+" .. hslk_global.unitsKV[towerId].ATTACK_WHITE,
                attack_green = "+" .. hslk_global.unitsKV[towerId].ATTACK_GREEN
            }
        )
        hevent.onLevelUp(u, updateMyTower)
        hevent.onAttack(u, onTowerAttack)
        hhero.setCurLevel(u, prevHeroLevel)
        -- 如果上一个单位有技能，复制技能
        if (game.towersAbilities[playerIndex] ~= nil) then
            for k, v in pairs(game.towersAbilities[playerIndex]) do
                addTowerSkillByBook(u, k, v)
            end
        end
        -- 如果有上一个单位，把上一个兵塔的物品给予新的兵塔，并删除它
        if (game.playerTower[playerIndex] ~= nil) then
            subTowerLevel(playerIndex)
            hitem.copy(game.playerTower[playerIndex], u)
            hunit.del(game.playerTower[playerIndex], 0)
        end
        game.playerTower[playerIndex] = u
        cj.PingMinimapEx(game.towerPoint[playerIndex][1], game.towerPoint[playerIndex][2], 10, 255, 255, 255, true)
        hevent.onItemUsed(u, onUnitItemsUesd)
        --阶级标志
        game.playerTowerPower[playerIndex] = hslk_global.unitsKV[towerId].TOWER_POWER
        hskill.add(u, game.thisUnitPowerAbilities[hslk_global.unitsKV[towerId].TOWER_POWER].ABILITY_ID, 0)
        --兵塔说明标志
        hskill.add(u, game.towersOrigins[hslk_global.unitsKV[towerId].INDEX].ABILITY_ID, 0)
        --种族
        addTowerSkillsRace(u, hslk_global.unitsKV[towerId])
        --兵塔技能
        addTowerSkillsx(u)
        --天赋等级
        if (isFirst) then
            addTowerLevel(playerIndex, 0)
        else
            addTowerLevel(playerIndex)
        end
        --技能树
        for k, v in pairs(game.thisEmptyAbilities) do
            if (game.towersAbilities[playerIndex][k] == nil) then
                v.Name = "空技能槽"
                v.ABILITY_LEVEL = nil
                addTowerSkillByBook(u, k, v)
            end
        end
        --移动卡的bug
        cj.TriggerRegisterUnitEvent(game.TRIGGER_DEMOVE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
        return u
    end
end

-- 创造信使
createMyCourier = function(playerIndex, courierId)
    if (playerIndex == nil or courierId == nil) then
        print("createMyCourier wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        -- 如果有上一个单位，把上一个信使暂时隐藏，后面取它的物品
        if (game.playerCourier[playerIndex] ~= nil) then
            cj.ShowUnit(game.playerCourier[playerIndex], false)
        end
        local x, y
        if (game.playerCourier[playerIndex] ~= nil) then
            x = cj.GetUnitX(game.playerCourier[playerIndex])
            y = cj.GetUnitY(game.playerCourier[playerIndex])
        else
            x = game.courierPoint[playerIndex][1]
            y = game.courierPoint[playerIndex][2]
        end
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = courierId,
                qty = 1,
                x = x,
                y = y
            }
        )
        hitem.setAllowSeparate(u)
        hattr.set(
            u,
            0,
            {
                weight = "=100"
            }
        )
        hevent.onItemUsed(u, onUnitItemsUesd)
        hevent.onSkillHappen(u, onCourierSkillUesd)
        -- 如果有上一个单位，把上一个信使的物品给予新的信使，并删除它
        if (game.playerCourier[playerIndex] ~= nil) then
            hitem.copy(game.playerCourier[playerIndex], u)
            hunit.del(game.playerCourier[playerIndex], 0)
        end
        --阶级标志
        hskill.add(u, game.thisUnitPowerAbilities[hslk_global.unitsKV[courierId].COURIER_POWER].ABILITY_ID, 0)
        game.playerCourier[playerIndex] = u
        hcamera.toUnit(hplayer.players[playerIndex], 0.50, u)
        --如果是冰戟剑灵，添加特效
        if (hslk_global.unitsKV[courierId].Name == "冰戟剑灵") then
            heffect.bindUnit("war3mapImported\\eff_flying_sword_ice.mdl", u, "origin", -1)
        end
        return u
    end
end
