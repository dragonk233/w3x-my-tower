game = {

    ALLY_PLAYER = nil,

    bigElfTips = {
        "给点力撒~", "哎哟好痛~", "痛阿痛~",
        "守住呀~", "咋回事~", "奥力给~",
        "噢不~", "又失守了~", "不敢相信~",
    },
    enemyTips = {
        "大力点~", "不痛~", "嘿嘿没死~", "大难不死", "我浪故我在~",
        "我走啦~", "奥力给~", "噢不~", "我逃~", "我逃走~", "逃走~",
        "老是打我~", "lucky~", "飞毛腿~", "留得青山在...", "求心理阴影...",
        "加速~", "加速加速~", "可以可以~", "习惯就好~", "不痛不痒~",
    },

    rule = {
        hz = {
            perWaveQty = 10,
            wave = 1,
        },
        dk = {
            perWaveQty = 20,
            playerQty = {},
            wave = {},
            mon = {},
            monLimit = {},
            monData = {},
        },
        cur = "hz"
    },

    playerTower = {},
    playerCourier = {},

    towers = {},
    towersKV = {},
    towersItems = {},
    towersItemsKV = {},

    thisUnits = {},
    thisEnemys = {},
    thisEnemysLen = 0,
    shops = {},
    courier = {},

    thisTowerPowerAbilities = {},
    thisTowerPowerAbilitiesLen = 0,

    thisEmptyAbilities = {},
    thisEmptyAbilitiesLen = 0,

    thisOptionAbility = {},
    thisOptionAbilityItem = {},

    -- 左上第一顺时针设定的
    towerPoint = {
        { -1536, 1536 },
        { 1536, 1536 },
        { 1536, -1536 },
        { -1536, -1536 },
    },
    courierPoint = {
        { -1280, 1280 },
        { 1280, 1280 },
        { 1280, -1280 },
        { -1280, -1280 },
    },
    pathPoint = {
        { { -1408, 256 }, { -1408, 1024 }, { -2048, 1024 }, { -2048, 2048 }, { -1024, 2048 }, { -1024, 1408 }, { -256, 1408 }, },
        { { 256, 1408 }, { 1024, 1408 }, { 1024, 2048 }, { 2048, 2048 }, { 2048, 1024 }, { 1408, 1024 }, { 1408, 128 }, },
        { { 1408, -384 }, { 1408, -1024 }, { 2048, -1024 }, { 2048, -2048 }, { 1024, -2048 }, { 1024, -1408 }, { 256, -1408 }, },
        { { -256, -1408 }, { -1024, -1408 }, { -1024, -2048 }, { -2048, -2048 }, { -2048, -1024 }, { -1408, -1024 }, { -1408, -256 }, },
    }

}
