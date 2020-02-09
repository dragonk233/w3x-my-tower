require "game.scheduleFuncGetPow"
require "game.scheduleFuncOnItemUse"
require "game.scheduleFuncOnCourierSkillUse"
require "game.scheduleFuncOnTowerAttack"
require "game.scheduleFuncOnTowerLevelUp"
require "game.scheduleFuncOnTowerDead"
require "game.scheduleFuncOnTowerLinkSkillUse"
require "game.scheduleFuncTowerSkillRace"
require "game.scheduleFuncTowerSkillx"
require "game.scheduleFuncEnemyGenNormal"
require "game.scheduleAI"

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
    local slk = hslk_global.unitsKV[uid]
    local tpv = slk.TOWER_POWER
    local attackWhite = slk.ATTACK_WHITE
    local race = slk.RACE
    local percent = 0
    if (tpv == "E") then
        percent = 0.02
    elseif (tpv == "D") then
        percent = 0.025
    elseif (tpv == "C") then
        percent = 0.03
    elseif (tpv == "B") then
        percent = 0.035
    elseif (tpv == "A") then
        percent = 0.05
    elseif (tpv == "S") then
        percent = 0.06
    elseif (tpv == "SS") then
        percent = 0.08
    elseif (tpv == "SSS") then
        percent = 0.10
    end
    attackWhite = diffLv * attackWhite * percent
    hattr.set(
        u,
        0,
        {
            attack_white = "+" .. attackWhite
        }
    )
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE * diffLv)
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.12 * slk.INT * diffLv)
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (0.08 * slk.STR * diffLv)
            }
        )
    end
    hsound.sound2Unit(cg.gg_snd_level_up, 100, u)
    htextTag.style(htextTag.create2Unit(u, "升级 ↑" .. cj.R2I(diffLv), 12.00, "ffff00", 1, 2.0, 10.00), "scale", 0, 0.1)
end

-- 创建link圈
createMyTowerLink = function(playerIndex, linkIndex, towerId, unitLv)
    if (playerIndex == nil or linkIndex == nil) then
        print("createMyTowerLink wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        if (game.playerTowerLink[playerIndex] == nil) then
            game.playerTowerLink[playerIndex] = {}
        end
        if (game.playerTowerLink[playerIndex][linkIndex] == nil) then
            game.playerTowerLink[playerIndex][linkIndex] = {}
        end
        local linkId = game.thisUnits["空位"].UNIT_ID
        if (towerId ~= nil) then
            linkId = game.towersShadow[towerId].UNIT_ID
        end
        -- 如果有上一个单位，把上一个删除
        if (game.playerTowerLink[playerIndex][linkIndex] ~= nil) then
            hunit.del(game.playerTowerLink[playerIndex][linkIndex].unit, 0)
        end
        local isUnSelectable = (linkId == game.thisUnits["空位"].UNIT_ID)
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = linkId,
                qty = 1,
                x = game.towerPoint[playerIndex][1] + game.towerLinkOffset[linkIndex][1],
                y = game.towerPoint[playerIndex][2] + game.towerLinkOffset[linkIndex][2],
                opacity = 0.4,
                modelScale = 1.0,
                isUnSelectable = isUnSelectable
            }
        )
        game.playerTowerLink[playerIndex][linkIndex].unit = u
        hunit.setUserData(u, linkIndex)
        if (towerId ~= nil) then
            game.playerTowerLink[playerIndex][linkIndex].tower_id = towerId
            --属性
            local tpv = hslk_global.unitsKV[towerId].TOWER_POWER
            local Primary = hslk_global.unitsKV[towerId].Primary
            local attack_damage_type = "physical"
            if (Primary == "INT") then
                attack_damage_type = "magic"
            end
            hattr.set(
                u,
                0,
                {
                    attack_damage_type = "=" .. attack_damage_type,
                    move = "=0",
                    damage_rebound_oppose = "=9999"
                }
            )
            hevent.onAttack(u, onTowerAttack)
            hevent.onSkillHappen(u, onTowerLinkSkillUesd)
            --兵塔技能
            addTowerSkillsx(u)
            --天赋等级
            if (unitLv == nil) then
                if (math.random(1, 7) == 1) then
                    unitLv = 0
                elseif (math.random(1, 6) == 1) then
                    unitLv = 1
                elseif (math.random(1, 5) == 1) then
                    unitLv = 2
                elseif (math.random(1, 4) == 1) then
                    unitLv = 3
                elseif (math.random(1, 3) == 1) then
                    unitLv = 4
                elseif (math.random(1, 2) == 1) then
                    unitLv = 5
                elseif (math.random(1, 2) == 2) then
                    unitLv = 6
                elseif (math.random(1, 2) == 1) then
                    unitLv = 7
                elseif (math.random(1, 2) == 2) then
                    unitLv = 8
                else
                    unitLv = 9
                end
            end
            game.playerTowerLink[playerIndex][linkIndex].tower_level = unitLv
            game.playerTowerLink[playerIndex][linkIndex].mark = hslk_global.unitsKV[towerId].MARK
            hskill.add(u, game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
            --计算
            hattr.set(
                u,
                0,
                {
                    attack_white = "+" ..
                        math.floor(
                            unitLv * 0.4 * hslk_global.unitsKV[towerId].ATTACK_WHITE +
                                hslk_global.unitsKV[towerId].ATTACK_WHITE
                        )
                }
            )
            --刷新种族个体
            addTowerSkillsRaceSingleAttr(u)
            --移动卡的bug
            cj.TriggerRegisterUnitEvent(game.TRIGGER_DE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
        end
        return u
    end
end

-- 创造兵塔
createMyTower = function(playerIndex, towerId, towerLevel)
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
        -- 还要计算生命百分比
        local prevHeroLevel = 1
        local prevHeroLifePercent = 100
        if (isFirst == false) then
            prevHeroLevel = cj.GetHeroLevel(game.playerTower[playerIndex])
            prevHeroLifePercent = hunit.getCurLifePercent(game.playerTower[playerIndex])
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
        hunit.setCurLifePercent(u, prevHeroLifePercent)
        --属性
        local tpv = hslk_global.unitsKV[towerId].TOWER_POWER
        local life = 400
        if (tpv == "E") then
            life = 1000
        elseif (tpv == "D") then
            life = 3000
        elseif (tpv == "C") then
            life = 5000
        elseif (tpv == "B") then
            life = 9000
        elseif (tpv == "A") then
            life = 20000
        elseif (tpv == "S") then
            life = 40000
        elseif (tpv == "SS") then
            life = 80000
        elseif (tpv == "SSS") then
            life = 150000
        end
        hattr.set(
            u,
            0,
            {
                move = "=0",
                life = "=" .. life,
                attack_white = "+" .. hslk_global.unitsKV[towerId].ATTACK_WHITE
            }
        )
        hevent.onLevelUp(u, updateMyTower)
        hevent.onAttack(u, onTowerAttack)
        hevent.onDead(u, onTowerDead)
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
        --兵塔技能
        addTowerSkillsx(u)
        --天赋等级
        if (isFirst) then
            addTowerLevel(playerIndex, 0)
        else
            addTowerLevel(playerIndex, towerLevel)
        end
        --技能树
        for k, v in pairs(game.thisEmptyAbilities) do
            if (game.towersAbilities[playerIndex][k] == nil) then
                v.Name = "空技能槽"
                v.ABILITY_LEVEL = nil
                addTowerSkillByBook(u, k, v)
            end
        end
        --刷新种族个体
        addTowerSkillsRaceSingleAttr(u)
        --装扮
        if (game.playerTowerEffectModel[playerIndex] ~= nil and #game.playerTowerEffectModel[playerIndex] > 0) then
            for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                hskill.add(u, v, 0)
            end
        end
        hskill.unarm(
            {
                whichUnit = u,
                during = 60,
                odds = 100 --几率，可选
            }
        )
        --移动卡的bug
        cj.TriggerRegisterUnitEvent(game.TRIGGER_DE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
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
                weight = "=1000"
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
        game.playerCourier[playerIndex] = u
        hcamera.toUnit(hplayer.players[playerIndex], 0.50, u)
        --如果是冰戟剑灵，添加特效
        if (hslk_global.unitsKV[courierId].Name == "冰戟剑灵") then
            heffect.bindUnit("war3mapImported\\eff_flying_sword_ice.mdl", u, "origin", -1)
        end
        --如果是AI模式
        MAYBE_AI.courier(playerIndex)
        hskill.silent(
            {
                whichUnit = u,
                during = 60,
                odds = 100 --几率，可选
            }
        )
        return u
    end
end
