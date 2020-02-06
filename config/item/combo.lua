items_combo = {}
items_combo_pre = "炼成的"
for cb = 1, 3, 1 do
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "加速手套Lv" .. cb,
            Description = "加速加速！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNGlove.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            perishable = 0,
            lv = 3 + cb,
            ATTR = {
                attack_speed = "+" .. (7 * cb)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "勇气勋章Lv" .. cb,
            Description = "做人是需要勇气的！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNMedalionOfCourage.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            perishable = 0,
            lv = 1 + cb,
            ATTR = {
                defend = "+" .. (8 * cb)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "风暴狮角Lv" .. cb,
            Description = "号召风暴卷袭的呼啸狮子号角",
            Art = "ReplaceableTextures\\CommandButtons\\BTNLionHorn.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            perishable = 0,
            lv = 10 + cb,
            ATTR = {
                attack_damage_type = "+wind",
                natural_wind = "+" .. (2 * cb)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "乌云号角Lv" .. cb,
            Description = "落雨啦~收衫啦~",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHornOfFog.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 11 + cb,
            ATTR = {
                attack_damage_type = "+wind",
                natural_wind = "+" .. (3.5 * cb)
            }
        }
    )
end
