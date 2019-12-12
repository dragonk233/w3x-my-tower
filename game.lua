--调试
console = require "jass.console"
console.enable = true

--加载h-lua
require "h-lua"

--加载本地图的global
require "global"

--SLK系统

-- tower 兵塔
local towersNames = {
    "人类·农民",
}
for _, name in ipairs(towersNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), cj.StringHash(name))
    local jv = json.parse(v)
    global.towers[name] = jv
    global.towersKV[jv.unitID] = jv
    hslk_global.unitsKV[jv.unitID] = jv
    --
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), cj.StringHash(name))
    jv = json.parse(v)
    global.towersItems[name] = jv
    global.towersItemsKV[jv.itemID] = jv
end

--shop
local shopNames = {
    "猎人之店",
}

for k, name in ipairs(shopNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    global.shops[name] = jv
end

-- courier 信使
local courierNames = {
    "雪鹰",
}
for _, name in ipairs(courierNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    global.courier[name] = jv
end

-- unit 其他单位
local thisUnitNames = {
    "大精灵",
}
for _, name in ipairs(thisUnitNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisunit"), cj.StringHash(name))
    local jv = json.parse(v)
    hslk_global.unitsKV[jv.unitID] = jv
    global.thisUnits[name] = jv
end

-- 测试的3秒 代码
htime.setInterval(3.00, nil, function()
    --[[
    print('player1mapLv = ' .. hdzapi.mapLv(hplayer.players[1]))
    hdzapi.server.set.str(hplayer.players[1], 'time', htime.his())
    print(hdzapi.server.get.str(hplayer.players[1], 'time'))
    if (hdzapi.hasMallItem(hplayer.players[1], 'abc')) then
        print('123456789')
    end
    ]]
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
hplayer.qty_max = 4 -- 最大玩家数
hplayer.convert_ratio = 100 -- 换算比率，100金 -> 1木

-- 设定友军
local ALLY_PLAYER = hplayer.players[12]

-- 设定敌军
hemeny.setName("拆塔小能手")
hemeny.setColor(cj.ConvertPlayerColor(12)) -- black
hemeny.setPlayer(hplayer.players[5])
hemeny.setPlayer(hplayer.players[6])
hemeny.setPlayer(hplayer.players[7])
hemeny.setPlayer(hplayer.players[8])
hemeny.setPlayer(hplayer.players[9])
hemeny.setPlayer(hplayer.players[10])
hemeny.setPlayer(hplayer.players[11])

-- game start(这里需要用时间事件延时N秒，不然很多动作会在初始化失效)
local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 1.0, false)
cj.TriggerAddAction(startTrigger, function()
    cj.DisableTrigger(cj.GetTriggeringTrigger())
    cj.DestroyTrigger(cj.GetTriggeringTrigger())
    --[[
        这里开始游戏正式开始了
        发挥你的想象力吧~
    ]]
    -- 第一玩家选择模式
    hmsg.echo("第一个玩家正在选择（游戏模式）", 10)
    -- 左上第一顺时针设定的
    local towerPoint = {
        { -1536, 1536 },
        { 1536, 1536 },
        { 1536, -1536 },
        { -1536, -1536 },
    }
    local courierPoint = {
        { -1280, 1280 },
        { 1280, 1280 },
        { 1280, -1280 },
        { -1280, -1280 },
    }
    local pathPoint = {
        { { -1408, 256 }, { -1408, 1024 }, { -2048, 1024 }, { -2048, 2048 }, { -1024, 2048 }, { -1024, 1408 }, { -256, 1408 }, },
        { { 256, 1408 }, { 1024, 1408 }, { 1024, 2048 }, { 2048, 2048 }, { 2048, 1024 }, { 1408, 1024 }, { 1408, 128 }, },
        { { 1408, 384 }, { 1408, -1024 }, { 2048, -1024 }, { 2048, -2048 }, { 1024, -2048 }, { 1024, -1408 }, { 256, -1408 }, },
        { { -256, -1408 }, { -1024, -1408 }, { -1024, -2048 }, { -2048, -2048 }, { -2048, -1024 }, { -1408, -1024 }, { -1408, -256 }, },
    }
    -- 构建出怪区域

    hdialog.create(
            nil,
            {
                title = "选择游戏模式",
                buttons = {
                    "无尽合作模式",
                    "个人坑友模式",
                }
            },
            function(btnIdx)
                hmsg.echo("选择了" .. btnIdx)
                if (btnIdx == "无尽合作模式") then
                    hmsg.echo("四个玩家独立出怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除伟“大精灵”的生命，直至游戏失败")
                    -- 大精灵
                    hunit.create({
                        whichPlayer = ALLY_PLAYER,
                        unitId = global.thisUnits["大精灵"].unitID,
                        qty = 1,
                        x = 0,
                        y = 0,
                    })
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    -- 商店
                    hunit.create({
                        whichPlayer = ALLY_PLAYER,
                        unitId = global.shops["猎人之店"].unitID,
                        qty = 1,
                        x = -256,
                        y = 256,
                        isInvulnerable = true,
                    })
                elseif (btnIdx == "个人坑友模式") then
                    hmsg.echo("四个玩家独立出怪，打不过玩家的兵塔会被扣血直至失败，击杀敌人时会在你的下家（顺时针方向）创建新的敌人攻击该玩家,直至其他人全部出局")
                    -- 商店
                    hunit.create({
                        whichPlayer = ALLY_PLAYER,
                        unitId = global.shops["猎人之店"].unitID,
                        qty = 1,
                        x = -256,
                        y = 256,
                        isInvulnerable = true,
                    })
                end
                -- 基本兵塔
                for k, v in pairs(towerPoint) do
                    if (his.playing(hplayer.players[k])) then
                        hunit.create({
                            whichPlayer = hplayer.players[k],
                            unitId = global.towers["人类·农民"].unitID,
                            qty = 1,
                            x = v[1],
                            y = v[2],
                        })
                        cj.PingMinimapEx(v[1], v[2], 10, 255, 255, 255, true)
                    end
                end
                -- 基本信使
                for k, v in pairs(courierPoint) do
                    if (his.playing(hplayer.players[k])) then
                        hunit.create({
                            whichPlayer = hplayer.players[k],
                            unitId = global.courier["雪鹰"].unitID,
                            qty = 1,
                            x = v[1],
                            y = v[2],
                        })
                        cj.PanCameraToTimed(v[1], v[2], 0.60)
                    end
                end
            end
    )

end)

