--调试
console = require "jass.console"
console.enable = true

--加载h-lua
require "h-lua"

--加载本地图的global
require "game.global"

--加载本地图的SLK系统
require "game.slk"

--加载本地图的test
require "game.test"

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

-- 设定玩家
hplayerInit()
hplayer.qty_max = 4 -- 最大玩家数
hplayer.convert_ratio = 100 -- 换算比率，100金 -> 1木

-- 设定友军
game.ALLY_PLAYER = hplayer.players[12]

-- 设定敌军
hemeny.setName("拆塔小能手")
hemeny.setShareSight(true)
hemeny.setColor(cj.ConvertPlayerColor(12)) -- black
hemeny.setPlayer(hplayer.players[5])
hemeny.setPlayer(hplayer.players[6])
hemeny.setPlayer(hplayer.players[7])
hemeny.setPlayer(hplayer.players[8])
hemeny.setPlayer(hplayer.players[9])
hemeny.setPlayer(hplayer.players[10])
hemeny.setPlayer(hplayer.players[11])

-- game start(这里需要用时间事件延时N秒，不然很多动作会在初始化失效)
--加载本地图的test
require "game.schedule"

