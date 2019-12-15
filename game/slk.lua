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
    "雪鹰",
}
for _, name in ipairs(courierNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    game.courier[name] = jv
end

-- unit 其他单位
local thisUnitNames = {
    "大精灵",
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