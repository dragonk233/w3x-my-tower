addTowerSkillsRace = function(u, slk)
    local race = slk.RACE
    hskill.add(u, game.thisUnitRaceAbilities[race].ABILITY_ID, 0)
    if (race == "人类") then
        local val = 0.07
        hattr.set(
            u,
            0,
            {
                str_white = "+" .. (val * slk.STR),
                agi_white = "+" .. (val * slk.AGI),
                int_white = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人王") then
        local val = 0.15
        hattr.set(
            u,
            0,
            {
                str_white = "+" .. (val * slk.STR),
                agi_white = "+" .. (val * slk.AGI),
                int_white = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "矮人") then
        hattr.set(
            u,
            0,
            {
                aim = "+15"
            }
        )
    elseif (race == "血精灵") then
        hattr.set(
            u,
            0,
            {
                attack_green = "+" .. (0.1 * slk.ATTACK_GREEN)
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.1 * slk.ATTACK_WHITE)
            }
        )
    elseif (race == "巨魔") then
        hattr.set(
            u,
            0,
            {
                attack_buff = {
                    attack_speed = {
                        odds = "+100",
                        val = "+5",
                        during = "+6"
                    }
                }
            }
        )
    elseif (race == "牛头人") then
        hattr.set(
            u,
            0,
            {
                knocking_odds = "+7"
            }
        )
    elseif (race == "暗夜精灵") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = "+dark"
            }
        )
    elseif (race == "德鲁伊") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = "+wood"
            }
        )
    elseif (race == "亡灵") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    move = {
                        odds = "+100",
                        val = "+45",
                        during = "+2.2",
                        model = "+Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                    }
                }
            }
        )
    elseif (race == "娜迦") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = "+water"
            }
        )
    elseif (race == "元素") then
        hattr.set(
            u,
            0,
            {
                natural_fire_oppose = "+5",
                natural_soil_oppose = "+5",
                natural_water_oppose = "+5",
                natural_ice_oppose = "+5",
                natural_wind_oppose = "+5",
                natural_light_oppose = "+5",
                natural_dark_oppose = "+5",
                natural_wood_oppose = "+5",
                natural_thunder_oppose = "+5",
                natural_poison_oppose = "+5",
                natural_ghost_oppose = "+5",
                natural_metal_oppose = "+5",
                natural_dragon_oppose = "+5",
                natural_insect_oppose = "+5"
            }
        )
    elseif (race == "恶魔") then
        hattr.set(
            u,
            0,
            {
                hunt_amplitude = "+6",
                attack_speed = "+6",
                defend = "-6"
            }
        )
    elseif (race == "昆虫") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = "+insect"
            }
        )
    elseif (race == "异兽") then
        hattr.set(
            u,
            0,
            {
                resistance = "+10",
                toughness = "+30"
            }
        )
    elseif (race == "幽魂") then
        hattr.set(
            u,
            0,
            {
                avoid = "+10"
            }
        )
    elseif (race == "食人魔") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    swim = {odds = "+10", val = "+0", during = "+1"}
                }
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_white = "+" .. (0.10 * slk.INT)
            }
        )
    elseif (race == "龙人") then
        hattr.set(
            u,
            0,
            {
                attack_hunt_type = "+dragon"
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                str_white = "+" .. (0.1 * slk.STR)
            }
        )
    end
end
