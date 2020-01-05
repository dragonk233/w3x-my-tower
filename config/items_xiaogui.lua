items_xiaogui = {
    {
        Name = "宠物唤符",
        ASDescription = "召唤一只宠物，宠物可以帮你携带物品甚至战斗",
        Description = "可以召唤宠物的卷轴",
        Suffix = "",
        goldcost = 300,
        lumbercost = 0,
        Art = "war3mapImported\\INV_Inscription_TarotBerserker.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = nil,
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "红宝石",
        Description = "深红的宝石",
        Suffix = "",
        goldcost = 1800,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNPhilosophersStone.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = {
            resistance = "+20",
            mana = "+500"
        },
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "绿宝石",
        Description = "幽绿的宝石",
        Suffix = "",
        goldcost = 1800,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHeartOfSearinox.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = {
            attack_hunt_type = { "wood" },
            avoid = "+15"
        },
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "真眼宝石",
        PSDescription = "可以看到500范围内一切不可见之物",
        Description = "玲珑剔透的宝石",
        Suffix = "",
        goldcost = 3000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNGem.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = nil,
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "火焰水晶",
        Description = "蕴藏火焰的水晶",
        Suffix = "",
        goldcost = 2000,
        lumbercost = 0,
        Art = "war3mapImported\\INV_Jewelcrafting_LivingRuby_03.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = {
            attack_hunt_type = { "fire" },
            split = 12,
            split_range = 100
        },
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "闪电水晶",
        Description = "蕴藏雷电的水晶",
        Suffix = "",
        goldcost = 2000,
        lumbercost = 0,
        Art = "war3mapImported\\INV_Jewelcrafting_Dawnstone_03.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = {
            attack_hunt_type = { "thunder" },
            attack_speed = 35,
            attack_effect = {
                lightning_chain = { odds = 15, val = 220, qty = 3, reduce = 15 }
            }
        },
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "恶鬼水晶",
        Description = "蕴藏鬼魂的水晶",
        Suffix = "",
        goldcost = 2000,
        lumbercost = 0,
        Art = "war3mapImported\\INV_Jewelcrafting_Nightseye_03.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = {
            attack_hunt_type = { "ghost" },
            attack_debuff = {
                add = {
                    { attr = "defend", odds = 25, val = 2, during = 5, model = nil }
                }
            }
        },
        Shop = { "小鬼珍宝市场" }
    },
    {
        Name = "霜冻水晶",
        Description = "蕴藏冰的水晶",
        Suffix = "",
        goldcost = 2000,
        lumbercost = 0,
        Art = "war3mapImported\\INV_Jewelcrafting_StarOfElune_03.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        Attr = {
            attack_hunt_type = { "ice" },
            defend = 30
        },
        Shop = { "小鬼珍宝市场" }
    }
}
