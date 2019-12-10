--调试
console = require "jass.console"
console.enable = true

--加载h-lua
require "h-lua"

--加载本地图的global
require "global"

--SLK系统
local courierNames = {
    "雪鹰",
}
local towersNames = {
    "人类·全能骑士·格雷戈里",
}
global.towersLen = #towersNames
for _, name in ipairs(towersNames) do
    table.insert(global.towers, cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), cj.StringHash(name)))
    table.insert(global.towersItems, cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), cj.StringHash(name)))
end
for k, v in ipairs(global.towers) do
    local jv = json.parse(v)
    global.towers[k] = jv
    global.towersKV[jv.heroID] = jv
end
for k, v in ipairs(global.towersItems) do
    local jv = json.parse(v)
    global.towersItems[k] = jv
    global.towersItemsKV[jv.itemID] = jv
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

