items_weapon3 = {
    {
        Name = "破折之戟",
        Description = "由于极其突出，所以命中非凡",
        goldcost = 5000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNWandOfNeutralization.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+35"
        }
    },
    {
        Name = "统治权杖",
        Description = "光辉的权杖",
        goldcost = 15800,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNScepterOfMastery.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+light",
            str_green = "+450",
            agi_green = "+450",
            int_green = "+450"
        }
    },
    {
        Name = "雷电之锤",
        Description = "由于增加了摩擦力，可以提速",
        goldcost = 34000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNStormHammer.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+thunder",
            attack_speed = "+35",
            attack_effect = {
                {
                    attr = "lightning_chain",
                    odds = 40,
                    qty = 3,
                    val = 3400,
                    effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                }
            }
        }
    },
    {
        Name = "分裂狂刀",
        Description = "光辉的权杖",
        goldcost = 70000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSpiritWalkerMasterTraining.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+777",
            attack_effect = {
                {
                    attr = "split",
                    odds = 100,
                    range = 600,
                    percent = 35
                }
            }
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
            attack_green = "+850",
            attack_buff = {
                {
                    attr = "attack_speed",
                    odds = 15,
                    val = 18,
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
            attack_green = "+800",
            aim = "+5"
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
            attack_green = "+1300",
            aim = "+10",
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
            attack_green = "+2400",
            aim = "+15",
            attack_debuff = {
                {
                    attr = "defend",
                    odds = 40,
                    val = 5,
                    during = 3
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
            aim = "+40",
            attack_green = "+2300",
            attack_buff = {
                {
                    attr = "attack_speed",
                    odds = 17,
                    val = 25,
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
            attack_green = "+2555",
            damage_extent = "+18"
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
            attack_green = "+3666",
            damage_extent = "+27"
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
            attack_green = "+5555",
            damage_extent = "+36"
        }
    }
}
