items_mystery = {
    {
        Name = "起死回生药水",
        Description = "致命魔术师专用手套一个",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNGreaterInvulneralbility.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ACTIVE = "令主兵塔恢复所有生命！",
        cooldown = 0
    },
    {
        Name = "法术大师手套",
        Description = "致命魔术师专用手套一个",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSpellSteal.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+magic",
            attack_effect = {
                {
                    attr = "violence",
                    odds = 30,
                    percent = 30
                }
            }
        }
    },
    {
        Name = "火焰之球",
        Description = "神像多拉贡博撸的球",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbOfFire.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+fire",
            natural_fire = "+15"
        }
    },
    {
        Name = "霜冻之球",
        Description = "很冷很刺激",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbOfFrost.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ice",
            natural_fire = "+17"
        }
    },
    {
        Name = "闪电之球",
        Description = "静电带感的球",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbOfLightning.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+thunder",
            natural_thunder = "+12",
            attack_effect = {
                {
                    attr = "lightning_chain",
                    odds = 35,
                    qty = 3,
                    val = 1200,
                    effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                }
            }
        }
    },
    {
        Name = "毒液之球",
        Description = "从远古毒龙提炼的球体",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbOfLightning.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+poison",
            natural_poison = "+10",
            attack_effect = {
                {
                    attr = "split",
                    odds = 30,
                    range = 500,
                    percent = 20,
                    effect = "Units\\Undead\\PlagueCloud\\PlagueCloudtarget.mdl"
                }
            }
        }
    },
    {
        Name = "影子球",
        Description = "窥探你邪恶的内心",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbOfDarkness.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+dark",
            natural_thunder = "+13",
            avoid = "+5"
        }
    },
    {
        Name = "骸骨鬼珠",
        Description = "ghost！",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbOfCorruption.blpp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ghost",
            natural_ghost = "+14",
            attack_debuff = {
                {
                    attr = "defend",
                    odds = 30,
                    val = 3,
                    during = 4,
                    effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                }
            }
        }
    },
    {
        Name = "飓风权杖",
        Description = "卷起风暴的权杖",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNWandOfCyclone.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+wind",
            natural_wind = "+15"
        }
    },
    {
        Name = "点石成金棒子",
        Description = "享受有钱人的爽",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNStarWand.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            gold_ratio = "+5",
            attack_damage_type = "+metal",
            natural_metal = "+18"
        }
    },
    {
        Name = "减速之球",
        Description = "这不是精气球",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNOrbofSlowness.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+soil",
            natural_soil = "+8",
            attack_debuff = {
                {
                    attr = "move",
                    odds = 30,
                    val = 45,
                    during = 4,
                    effect = "Abilities\\Spells\\Human\\slow\\slowtarget.mdl"
                }
            }
        }
    },
    {
        Name = "恶灵珠",
        Description = "球内封印者恶魔",
        goldcost = 0,
        lumbercost = 50,
        Art = "ReplaceableTextures\\CommandButtons\\BTNUsedSoulGem.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            damage_extent = "+15"
        }
    }
}
