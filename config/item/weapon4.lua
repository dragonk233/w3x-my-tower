items_weapon4 = {
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
            aim = "+40"
        }
    },
    {
        Name = "大白刀",
        Description = "又大又白~",
        goldcost = 7000,
        lumbercost = 0,
        Art = "war3mapImported\\icon_item_Weapon_Shortblade_29.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+25",
            attack_green = "+700"
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
            str_green = "+555",
            agi_green = "+555",
            int_green = "+555"
        }
    },
    {
        Name = "血滴权杖",
        Description = "光辉的权杖",
        goldcost = 25000,
        lumbercost = 0,
        Art = "war3mapImported\\icon_item_Wand_09.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+dark",
            str_green = "+999",
            agi_green = "+999",
            int_green = "+999"
        }
    },
    {
        Name = "雷电之锤",
        Description = "充满电力的锤子",
        goldcost = 38000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNStormHammer.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+thunder",
            attack_speed = "+30",
            attack_effect = {
                {
                    attr = "lightning_chain",
                    odds = 40,
                    qty = 3,
                    val = 4200,
                    effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                }
            }
        }
    },
    {
        Name = "分裂狂刀",
        Description = "令力量分散的神奇狂刀",
        goldcost = 78000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSpiritWalkerMasterTraining.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+1777",
            attack_effect = {
                {
                    attr = "split",
                    odds = 100,
                    range = 600,
                    percent = 10
                }
            }
        }
    },
    {
        Name = "冰晶三体锤",
        Description = "由三块奇妙晶钻打造而成的刃锤",
        goldcost = 151515,
        lumbercost = 0,
        Art = "war3mapImported\\icon_item_Axe_70.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+33",
            attack_green = "+2333",
            attack_effect = {
                {
                    attr = "violence",
                    odds = 25,
                    percent = 125
                },
                {
                    attr = "violence",
                    odds = 50,
                    percent = 100
                },
                {
                    attr = "violence",
                    odds = 75,
                    percent = 75
                }
            }
        }
    },
    {
        Name = "异体赛瑞石",
        Description = "一种奇妙的宇宙灵石，同时拥有物理及魔法两种力",
        goldcost = 200200,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHeartOfSearinox.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+75",
            attack_damage_type = "+physical,magic",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 50,
                    percent = 100
                },
                {
                    attr = "violence",
                    odds = 50,
                    percent = 100
                }
            }
        }
    },
    {
        Name = "海神法杖",
        Description = "大海之主用来定海的法杖，宁静而庄严",
        goldcost = 300000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNPriestAdept.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+god,water,wind",
            natural_water = "+45",
            natural_wind = "+35",
            natural_water_oppose = "+70",
            natural_wind_oppose = "+35",
            natural_ice_oppose = "+25"
        }
    },
    {
        Name = "乱神权杖",
        Description = "半神使用的法杖，引起世界的纷争",
        goldcost = 480000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNStaffOfSilence.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+god,light,magic",
            natural_god = "+49",
            natural_god_oppose = "+49",
            str_green = "+4949",
            int_green = "+4949"
        }
    },
    {
        Name = "鬼神骨灰瓮",
        Description = "传说无论是神还是鬼，被杀死后灵魂都会收纳进此骨灰瓮，当然也像是假的",
        goldcost = 555555,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNUrnOfKelThuzad.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ghost",
            natural_ghost = "+50",
            natural_ghost_oppose = "+75",
            str_green = "+5555",
            agi_green = "+5555",
            int_green = "+5555"
        }
    },
    {
        Name = "毁灭之角",
        Description = "据说可以毁灭世界（当然是假的）",
        goldcost = 666666,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHornOfDoom.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+absolute",
            natural_god_oppose = "+16.66",
            attack_speed = "+66.6",
            damage_extent = "+66.6"
        }
    }
}
