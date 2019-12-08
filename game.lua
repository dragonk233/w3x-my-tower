--调试
console = require "jass.console"
console.enable = true

--加载h-lua
require "h-lua"

--加载本地图的gloabal
require "global"

--SLK系统
local heroNames = {
    "人类·全能骑士·格雷戈里",
}
hslk_global.heroesLen = #heroNames
for k, hname in ipairs(heroNames) do
    table.insert(hslk_global.heroes, cj.LoadStr(cg.hash_myslk, cj.StringHash("heros"), cj.StringHash(hname)))
    table.insert(hslk_global.heroesItems, cj.LoadStr(cg.hash_myslk, cj.StringHash("herosItems"), cj.StringHash(hname)))
end
for k, v in ipairs(hslk_global.heroes) do
    local jv = json.parse(v)
    hslk_global.heroes[k] = jv
    hslk_global.heroesKV[jv.heroID] = jv
    hslk_global.unitsKV[jv.heroID] = jv
end
for k, v in ipairs(hslk_global.heroesItems) do
    local jv = json.parse(v)
    hslk_global.heroesItems[k] = jv
    hslk_global.heroesItemsKV[jv.itemID] = jv
end

--shop
local shopNames = {
    "婲開ぃ誰獨賞〆之泉",
}
for k, name in ipairs(shopNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), cj.StringHash(name))
    local jv = json.parse(v)
    global.shops[name] = jv
end

hSys.print_r(global.shops)

-- 测试的3秒 代码
htime.setInterval(3.00, nil, function()
    print('player1mapLv = ' .. hdzapi.mapLv(hplayer.players[1]))
    hdzapi.server.set.str(hplayer.players[1], 'time', htime.his())
    print(hdzapi.server.get.str(hplayer.players[1], 'time'))
    if (hdzapi.hasMallItem(hplayer.players[1], 'abc')) then
        print('123456789')
    end
end)

local preload = {};
for k, v in pairs(hslk_global.unitsKV) do
    table.insert(preload, k)
end

--预读
for k, v in ipairs(preload) do
    local u = cj.CreateUnit(hplayer.player_passive, hSys.getObjId(v), 0, 0, 0)
    hattr.registerAll(u)
    hunit.del(u, 0.1)
    print(hunit.getAvatar(u))
end

-- 镜头模式
hcamera.setModel("normal")
-- 属性 - 硬直条
-- hattrUnit.punishTtgIsOpen(false)
-- hattrUnit.punishTtgIsOnlyHero(false)
-- hattrUnit.punishTtgHeight(250.00)
-- 迷雾
cj.FogEnable(true)
-- 阴影
cj.FogMaskEnable(true)

-- 设定玩家
hplayerInit()
hplayer.qty_max = 6 -- 最大玩家数
hplayer.convert_ratio = 10 -- 换算比率，10金 -> 1木

-- 设定敌军
hemeny.setName("诡异狂徒")
hemeny.setColor(cj.ConvertPlayerColor(12)) -- black
hemeny.setPlayer(hplayer.players[8])
hemeny.setPlayer(hplayer.players[9])
hemeny.setPlayer(hplayer.players[10])
hemeny.setPlayer(hplayer.players[11])
hemeny.setPlayer(hplayer.players[12])

-- 商店
hunit.create({
    whichPlayer = hplayer.players[7],
    unitId = global.shops["婲開ぃ誰獨賞〆之泉"].shopID,
    --qty = 1,
    x = -2297,
    y = -2675,
    isInvulnerable = true,
})

-- 第一玩家选择难度

