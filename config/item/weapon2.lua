items_weapon2 = {
    {
        Name = "巨人力量腰带",
        Description = "大个子食人鬼的腰带",
        goldcost = 2300,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNBelt.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            str_green = "+200"
        }
    },
    {
        Name = "奎尔萨拉斯之靴",
        Description = "奎尔萨拉斯的鞋子",
        goldcost = 2300,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNBoots.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            agi_green = "+200"
        }
    },
    {
        Name = "法师长袍",
        Description = "中级魔法师的斗篷",
        goldcost = 2300,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNRobeOfTheMagi.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            int_green = "+200"
        }
    },
    {
        Name = "加速手套",
        Description = "由于增加了摩擦力，可以提速",
        goldcost = 7500,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNGlove.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_speed = "+20"
        }
    },
    {
        Name = "石头斧",
        Description = "石头与铁混合做成的斧头",
        goldcost = 8000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpOne.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+physical",
            attack_green = "+250",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 10,
                    percent = 13
                }
            }
        }
    },
    {
        Name = "冰石战斧",
        Description = "透彻寒气的斧头",
        goldcost = 16000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpTwo.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+physical,ice",
            attack_green = "+600",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 15,
                    percent = 18
                }
            }
        }
    },
    {
        Name = "烈焰战斧",
        Description = "缠绕火焰的斧头",
        goldcost = 31000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpThree.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+physical,fire",
            attack_green = "+950",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 21,
                    percent = 30
                }
            }
        }
    },
    {
        Name = "爆锤",
        Description = "超级沉重的锤子",
        goldcost = 77000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHammer.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_speed = "-10",
            attack_green = "+1200",
            attack_effect = {
                {
                    attr = "swim",
                    odds = 25,
                    during = 1.2,
                    val = 750
                }
            }
        }
    },
    {
        Name = "魔法书",
        Description = "中级魔法师手持的魔法书",
        goldcost = 30000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSpellBookBLS.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+600",
            int_green = "+500"
        }
    },
    {
        Name = "专家魔法书",
        Description = "中级魔法师进阶用的魔法书",
        goldcost = 34000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSorceressAdept.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+magic",
            attack_green = "+1000",
            int_green = "+860"
        }
    },
    {
        Name = "魔法杖",
        Description = "发着光",
        goldcost = 90000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNWitchDoctorAdept.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+magic",
            attack_green = "+1600",
            int_green = "+1500",
            attack_effect = {
                {
                    attr = "violence",
                    odds = 18,
                    percent = 23
                }
            }
        }
    },
    {
        Name = "巫师杖",
        Description = "古怪的法杖",
        goldcost = 150000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNWitchDoctorMaster.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+magic,poison",
            attack_green = "+2600",
            int_green = "+2000",
            attack_effect = {
                {
                    attr = "violence",
                    odds = 23,
                    percent = 27
                }
            }
        }
    }
}
