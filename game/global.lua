game = {
    ALLY_PLAYER = nil,
    TRIGGER_DEMOVE = nil,
    bigElfTips = {
        "给点力撒~",
        "哎哟好痛~",
        "痛阿痛~",
        "守住呀~",
        "咋回事~",
        "奥力给~",
        "噢不~",
        "又失守了~",
        "不敢相信~"
    },
    enemyTips = {
        "大力点~",
        "不痛~",
        "嘿嘿没死~",
        "大难不死",
        "我浪故我在~",
        "我走啦~",
        "奥力给~",
        "噢不~",
        "我逃~",
        "我逃走~",
        "逃走~",
        "老是打我~",
        "lucky~",
        "飞毛腿~",
        "留得青山在...",
        "求心理阴影...",
        "加速~",
        "加速加速~",
        "可以可以~",
        "习惯就好~",
        "不痛不痒~",
        "WTF~"
    },
    runing = true,
    rule = {
        yb = {
            perWaveQty = 20,
            wave = 1,
            waveEnd = 100,
            mon = nil
        },
        hz = {
            perWaveQty = 20,
            wave = 1,
            mon = nil
        },
        dk = {
            perWaveQty = 16,
            playerQty = {},
            wave = {},
            mon = {},
            monLimit = {},
            monData = {}
        },
        cur = "yb"
    },
    playerTower = {},
    playerTowerLevel = {},
    playerCourier = {},
    towersLen = 0,
    towers = {},
    towersItems = {},
    towersItemsKV = {},
    towersAbilities = {},
    towersOrigins = {},
    thisUnits = {},
    thisEnemys = {},
    thisEnemysLen = 0,
    thisEnemysBoss = {},
    thisEnemysBossLen = 0,
    thisEnemysAward = {},
    thisEnemysAwardLen = 0,
    shops = {},
    courierLen = 0,
    courier = {},
    courierItem = {},
    thisUnitPowerAbilities = {},
    thisUnitPowerAbilitiesLen = 0,
    thisUnitLevelAbilities = {},
    thisUnitLevelAbilitiesLen = 0,
    thisUnitRaceAbilities = {},
    thisUnitRaceAbilitiesLen = 0,
    thisEmptyAbilities = {},
    thisEmptyAbilitiesLen = 0,
    thisOptionAbility = {},
    thisOptionAbilityItem = {},
    thisOptionItem2Abli = {},
    thisOptionTowerPowerItem = {},
    -- 左上第一顺时针设定的
    towerPoint = {
        {-1536, 1536},
        {1536, 1536},
        {1536, -1536},
        {-1536, -1536}
    },
    courierPoint = {
        {-1280, 1280},
        {1280, 1280},
        {1280, -1280},
        {-1280, -1280}
    },
    pathPoint = {
        {{-1408, 256}, {-1408, 1024}, {-2048, 1024}, {-2048, 2048}, {-1024, 2048}, {-1024, 1408}, {-256, 1408}},
        {{256, 1408}, {1024, 1408}, {1024, 2048}, {2048, 2048}, {2048, 1024}, {1408, 1024}, {1408, 128}},
        {{1408, -384}, {1408, -1024}, {2048, -1024}, {2048, -2048}, {1024, -2048}, {1024, -1408}, {256, -1408}},
        {{-256, -1408}, {-1024, -1408}, {-1024, -2048}, {-2048, -2048}, {-2048, -1024}, {-1408, -1024}, {-1408, -256}}
    }
}
