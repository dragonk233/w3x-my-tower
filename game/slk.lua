--SLK系统

-- tower 兵塔
local towersNames = {
    "人类·农民",
}
for _, name in ipairs(towersNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), cj.StringHash(name))
    local jv = json.parse(v)
    game.towers[name] = jv
    game.towersKV[jv.unitID] = jv
    hslk_global.unitsKV[jv.unitID] = jv
    --
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), cj.StringHash(name))
    jv = json.parse(v)
    game.towersItems[name] = jv
    game.towersItemsKV[jv.itemID] = jv
end

--shop
local shopNames = {
    "猎人之店",
}

for k, name in ipairs(shopNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    game.shops[name] = jv
end

-- courier 信使
local courierNames = {
    "灵动的雪鹰",
}
for _, name in ipairs(courierNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    game.courier[name] = jv
end

-- unit 其他单位
local thisUnitNames = {
    "大精灵", "河草",
}
for _, name in ipairs(thisUnitNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisunit"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    game.thisUnits[name] = jv
end

-- enemy 敌人单位
local thisEnemyNames = {
    "食尸鬼",
}
game.thisEnemysLen = #thisEnemyNames
for k, name in ipairs(thisEnemyNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemys"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    game.thisEnemys[k] = jv
end

-- 兵塔阶级技能
local thisTowerPowerAbilitiesName = {
    "SSS", "SS", "S", "A", "B", "C", "D", "E"
}
game.thisTowerPowerAbilitiesLen = #thisTowerPowerAbilitiesName
for _, name in ipairs(thisTowerPowerAbilitiesName) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_tower_power"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.abilitiesKV[jv.abilityID] = jv
    game.thisTowerPowerAbilities[name] = jv
end

-- 空技能
local thisEmptyAbilitiesName = {
    "A", "S", "D", "F", "Z", "X", "C", "V"
}
game.thisEmptyAbilitiesLen = #thisEmptyAbilitiesName
for _, name in ipairs(thisEmptyAbilitiesName) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_empty"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.abilitiesKV[jv.abilityID] = jv
    game.thisEmptyAbilities[name] = jv
end

-- 技能/技能书
local abilities_qty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_qty"), 0)
local abilities_item_qty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_item_qty"), 0)
for i = 1, abilities_qty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities"), i)
    local jv = json.parse(v)
    hslk_global.itemsKV[jv.abilityID] = jv
    if (game.thisOptionAbility[jv.abilityST] == nil) then
        game.thisOptionAbility[jv.abilityST] = {}
    end
    table.insert(game.thisOptionAbility[jv.abilityST], jv)
end
for i = 1, abilities_item_qty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilitiesItems"), i)
    local jv = json.parse(v)
    hslk_global.itemsKV[jv.itemID] = jv
    if (game.thisOptionAbilityItem[jv.abilityCOLOR] == nil) then
        game.thisOptionAbilityItem[jv.abilityCOLOR] = {}
    end
    if (game.thisOptionAbilityItem[jv.abilityCOLOR][jv.abilityLV] == nil) then
        game.thisOptionAbilityItem[jv.abilityCOLOR][jv.abilityLV] = {}
    end
    table.insert(game.thisOptionAbilityItem[jv.abilityCOLOR][jv.abilityLV], jv)
end
