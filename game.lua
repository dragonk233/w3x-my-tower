--加载本地图的global
require "game.global"

--加载本地图的SLK系统
require "game.slk"

--加载本地图的test
require "game.test"

local preload = {}
for k, _ in pairs(hslk_global.unitsKV) do
    table.insert(preload, k)
end

--预读
for _, v in ipairs(preload) do
    local u = cj.CreateUnit(hplayer.player_passive, string.char2id(v), 0, 0, 0)
    hattr.registerAll(u)
    for k, _ in pairs(hslk_global.abilitiesKV) do
        cj.UnitAddAbility(u, k)
        cj.UnitRemoveAbility(u, k)
    end
    hunit.del(u, 0.1)
end

-- 镜头模式
hcamera.setModel("normal")

-- 设定玩家
hplayer.qty_max = 4 -- 最大玩家数
hplayer.convert_ratio = 100 -- 换算比率，100金 -> 1木

-- 设定友军
game.ALLY_PLAYER = hplayer.players[12]

-- 设定敌军
henemy.setName("拆塔小能手")
-- henemy.setShareSight(true)
henemy.setColor(cj.ConvertPlayerColor(12)) -- black
henemy.setPlayer(hplayer.players[5])
henemy.setPlayer(hplayer.players[6])
henemy.setPlayer(hplayer.players[7])
henemy.setPlayer(hplayer.players[8])
henemy.setPlayer(hplayer.players[9])
henemy.setPlayer(hplayer.players[10])
henemy.setPlayer(hplayer.players[11])

-- game start(这里需要用时间事件延时N秒，不然很多动作会在初始化失效)
--加载本地图的test
require "game.schedule"
