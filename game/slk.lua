--SLK系统

-- tower 兵塔
game.towersLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("towers"), -1)
for i = 1, game.towersLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), i)
    local jv = json.parse(v)
    game.towers[jv.INDEX] = jv
    hRuntime.register.unit(jv)
    --
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), i)
    jv = json.parse(v)
    jv.I_TYPE = "tower"
    hRuntime.register.item(jv)
    game.towersItems[jv.INDEX] = jv
    if (game.thisOptionTowerPowerItem[jv.TOWER_POWER] == nil) then
        game.thisOptionTowerPowerItem[jv.TOWER_POWER] = {}
    end
    table.insert(game.thisOptionTowerPowerItem[jv.TOWER_POWER], jv)
    --
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilitiies_tower_origins"), i)
    jv = json.parse(v)
    game.towersOrigins[jv.INDEX] = jv
end

--shop
local shopNames = {
    "猎人之店",
    "信使之笼"
}

for _, name in ipairs(shopNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.shops[name] = jv
end

-- courier 信使
game.courierLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers"), -1)
for i = 1, game.courierLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.courier[jv.INDEX] = jv
    --
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriersItems"), i)
    jv = json.parse(v)
    jv.I_TYPE = "courier"
    hRuntime.register.item(jv)
    game.courierItem[jv.INDEX] = jv
end

-- unit 其他单位
local thisUnitNames = {
    "大精灵",
    "河草",
    "大树灵"
}
for _, name in ipairs(thisUnitNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisunit"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisUnits[name] = jv
end

-- enemy 敌人单位
game.thisEnemysLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemys"), -1)
for k = 1, game.thisEnemysLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemys"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemys[k] = jv
end

-- 兵塔阶级技能
local thisTowerPowerAbilitiesName = {
    "SSS",
    "SS",
    "S",
    "A",
    "B",
    "C",
    "D",
    "E"
}
game.thisTowerPowerAbilitiesLen = #thisTowerPowerAbilitiesName
for _, name in ipairs(thisTowerPowerAbilitiesName) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_tower_power"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisTowerPowerAbilities[name] = jv
end

-- 空技能
local thisEmptyAbilitiesName = {
    "A",
    "S",
    "D",
    "F",
    "Z",
    "X",
    "C",
    "V"
}
game.thisEmptyAbilitiesLen = #thisEmptyAbilitiesName
for _, name in ipairs(thisEmptyAbilitiesName) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_empty"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisEmptyAbilities[name] = jv
end

-- 技能/技能书
local abilities_qty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_qty"), 0)
local abilities_item_qty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_item_qty"), 0)
for i = 1, abilities_qty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    if (game.thisOptionAbility[jv.INDEX] == nil) then
        game.thisOptionAbility[jv.INDEX] = {}
    end
    game.thisOptionAbility[jv.INDEX][jv.ABILITY_BTN] = jv
end
for i = 1, abilities_item_qty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilitiesItems"), i)
    local jv = json.parse(v)
    jv.I_TYPE = "ability"
    hRuntime.register.item(jv)
    if (game.thisOptionAbilityItem[jv.ABILITY_COLOR] == nil) then
        game.thisOptionAbilityItem[jv.ABILITY_COLOR] = {}
    end
    if (game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] == nil) then
        game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] = {}
    end
    table.insert(game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL], jv)
end
