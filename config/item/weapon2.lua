items_weapon2 = {
    {
        Name = "破旧的短剑",
        Description = "陈旧的铁制短剑，沉重且不太锋利",
        goldcost = 16000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+1400"
        }
    },
    {
        Name = "短剑",
        Description = "铁制短剑，沉重但尚算锋利",
        goldcost = 20000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+1750"
        }
    },
    {
        Name = "寒铁短剑",
        Description = "寒铁打造的短剑，较轻但依然锋利",
        goldcost = 32000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_green = "+2100"
        }
    },
    {
        Name = "赤铁短剑",
        Description = "赤铜打造的剑，称手并如火般犀利",
        goldcost = 60000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNArcaniteMelee.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+fire",
            attack_green = "+3300"
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
            attack_green = "+700",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 13,
                    percent = 16
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
            attack_green = "+1100",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 17,
                    percent = 21
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
            attack_green = "+2000",
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
            attack_speed = "-20",
            attack_green = "+3600",
            attack_effect = {
                {
                    attr = "swim",
                    odds = 25,
                    during = 2.2,
                    val = 1000
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
            attack_green = "+700",
            int_green = "+900"
        }
    },
    {
        Name = "专家魔法书",
        Description = "中级魔法师进阶用的魔法书",
        goldcost = 46000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSorceressAdept.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+magic",
            attack_green = "+1300",
            int_green = "+1500"
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
            attack_green = "+2200",
            int_green = "+2600",
            attack_effect = {
                {
                    attr = "violence",
                    odds = 20,
                    percent = 26
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
            attack_green = "+2900",
            int_green = "+3200",
            attack_effect = {
                {
                    attr = "violence",
                    odds = 30,
                    percent = 30
                }
            }
        }
    }
}
