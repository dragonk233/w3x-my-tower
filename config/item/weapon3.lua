items_weapon3 = {
    {
        Name = "小鬼手",
        Description = "食尸鬼的腐烂手爪",
        goldcost = 6500,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNUnholyStrength.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ghost",
            attack_green = "+450",
            str_green = "+300"
        }
    },
    {
        Name = "大鬼手",
        Description = "食尸鬼之手",
        goldcost = 27500,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyStrength.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ghost",
            attack_green = "+1100",
            str_green = "+500",
            natural_ghost = "+10"
        }
    },
    {
        Name = "爆裂鬼手",
        Description = "高级邪恶力量",
        goldcost = 55000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNAdvancedUnholyStrength.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ghost,fire",
            attack_green = "+1700",
            str_green = "+1000",
            natural_ghost = "+13",
            natural_fire = "+13"
        }
    },
    {
        Name = "绿溟黄泉骨",
        Description = "骨质增强的秘方",
        goldcost = 90000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSkeletalLongevity.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+2000",
            str_green = "+2000",
            agi_green = "+2000"
        }
    },
    {
        Name = "硬弓",
        Description = "弯弓射大雕",
        goldcost = 12500,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNImprovedBows.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+20",
            attack_green = "+800",
            attack_buff = {
                {
                    attr = "attack_speed",
                    odds = 15,
                    val = 13,
                    during = 3
                }
            }
        }
    },
    {
        Name = "钢枪",
        Description = "长长的钢枪",
        goldcost = 20000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSteelRanged.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+1600",
            aim = "+5",
            attack_debuff = {
                {
                    attr = "defend",
                    odds = 30,
                    val = 3,
                    during = 3
                }
            }
        }
    },
    {
        Name = "冷牙钢枪",
        Description = "冰冷的长钢枪",
        goldcost = 83000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNThoriumRanged.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+3500",
            aim = "+10",
            attack_debuff = {
                {
                    attr = "defend",
                    odds = 30,
                    val = 5,
                    during = 3
                }
            }
        }
    },
    {
        Name = "炙热钢枪",
        Description = "火尖枪吗？no！",
        goldcost = 180000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNArcaniteRanged.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+fire",
            attack_green = "+6100",
            aim = "+15",
            attack_debuff = {
                {
                    attr = "defend",
                    odds = 40,
                    val = 7,
                    during = 4
                }
            }
        }
    },
    {
        Name = "黄金弓",
        Description = "黄金铸造的弓，很重",
        goldcost = 200000,
        lumbercost = 0,
        Art = "war3mapImported\\icon_item_Weapon_Bow_06.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+50",
            attack_green = "+6400",
            attack_buff = {
                {
                    attr = "attack_speed",
                    odds = 20,
                    val = 18,
                    during = 3
                }
            }
        }
    },
    {
        Name = "铁戟",
        Description = "铁制的长戟",
        goldcost = 250000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNStrengthOfTheMoon.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+6666",
            damage_extent = "+28"
        }
    },
    {
        Name = "凉月戟",
        Description = "月之高冷",
        goldcost = 360000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNImprovedStrengthOfTheMoon.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+7777",
            damage_extent = "+37"
        }
    },
    {
        Name = "月神戟",
        Description = "月之力量",
        goldcost = 500000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNAdvancedStrengthOfTheMoon.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+8888",
            damage_extent = "+46"
        }
    }
}
