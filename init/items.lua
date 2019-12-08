-- items

-- 组装物品的描述
local itemDesc = function(v)
    local desc = ""
    if (v.ASDescription ~= nil) then
        desc = desc .. hColor.yellow("主动：" .. v.ASDescription) .. "|n"
    end
    if (v.PSDescription ~= nil) then
        desc = desc .. hColor.seaLight(v.PSDescription)
        if (v.Attr == nil and v.Description ~= nil and v.Suffix ~= nil and v.Description ~= "" and v.Suffix ~= "") then
            desc = desc .. "|n|n"
        else
            desc = desc .. "|n"
        end
    end
    if (v.Attr ~= nil and hSys.getTableLen(v.Attr) >= 1) then
        desc = desc .. hColor.yellowLight(const_getItemDesc(v.Attr))
        if ((v.Description ~= nil and v.Description ~= "") or (v.Suffix ~= nil and v.Suffix ~= "")) then
            desc = desc .. "|n"
        end
    end
    if (v.Description ~= nil and v.Description ~= "") then
        desc = desc .. hColor.white(v.Description)
        if (v.Suffix ~= nil and v.Suffix ~= "") then
            desc = desc .. "|n"
        end
    end
    if (v.Suffix ~= nil and v.Suffix ~= "") then
        desc = desc .. hColor.grey(v.Suffix)
    end
    return desc
end

-- 组装物品的说明
local itemUbertip = function(v)
    local desc = ""
    if (v.Attr ~= nil and hSys.getTableLen(v.Attr) >= 1) then
        desc = desc .. const_getItemUbertip(v.Attr)
    end
    if (v.ASDescription ~= nil) then
        desc = desc .. "主动使用时可" .. v.ASDescription .. ";"
    end
    if (v.PSDescription ~= nil) then
        desc = desc .. v.PSDescription .. ";"
    end
    if (v.Description ~= nil) then
        desc = desc .. v.Description
    end
    if (v.Suffix ~= nil) then
        desc = desc .. ";" .. v.Suffix
    end
    return desc
end

-- 组装物品的空冷却
local itemCooldownID = function(v)
    if (v.cooldownID == nil) then
        return "AIat"
    end
    if (v.cooldownID < 0) then
        v.cooldownID = 0
    end
    if (v.cooldownID > 60) then
        v.cooldownID = 60
    end
    return ITEM_COOLDOWN[v.cooldownID]
end

local itemsShop = {}

items = {
    items_mi,
    items_canghai,
    items_shahua,
    items_xiaogui,
}

for _, item in ipairs(items) do
    for _, v in ipairs(item) do
        local cd = itemCooldownID(v)
        local abilList = ""
        local usable = 0
        if (cd ~= "AIat") then
            abilList = cd
            usable = 1
        end
        local obj = slk.item.rat9:new("items_" .. v.Name)
        obj.Name = v.Name
        obj.Description = itemDesc(v)
        obj.Ubertip = itemUbertip(v)
        obj.goldcost = v.goldcost or 1000000
        obj.lumbercost = v.lumbercost or 1000000
        obj.Level = math.floor(v.goldcost / 1000)
        obj.oldLevel = math.floor(v.goldcost / 1000)
        obj.Art = v.Art
        obj.file = "Objects\\InventoryItems\\TreasureChest\\treasurechest.mdl"
        obj.stockStart = v.stockStart or 0
        obj.stockRegen = v.stockRegen or 1
        obj.prio = v.prio or 0
        obj.cooldownID = cd
        obj.abilList = abilList
        obj.ignoreCD = v.ignoreCD or 0
        obj.drop = v.drop or 0
        obj.perishable = v.perishable or 0
        obj.usable = usable
        obj.powerup = v.powerup
        obj.sellable = v.sellable
        obj.pawnable = v.pawnable
        obj.droppable = v.dropable
        obj.pickRandom = 1
        obj.uses = 1
        if (v.Shop ~= nil and hSys.getTableLen(v.Shop) > 0) then
            for _, s in ipairs(v.Shop) do
                if (itemsShop[s] == nil) then
                    itemsShop[s] = {}
                end
                local len = hSys.getTableLen(itemsShop[s])
                if (len < 12) then
                    len = len + 1
                    obj.HotKey = CONST_HOTKEY[len].HotKey
                    obj.Tip = "购买" .. v.Name .. "(" .. hColor.gold(CONST_HOTKEY[len].HotKey) .. ")"
                    obj.Buttonpos1 = CONST_HOTKEY[len].Buttonpos1
                    obj.Buttonpos2 = CONST_HOTKEY[len].Buttonpos2
                else
                    obj.Tip = "购买" .. v.Name
                end
            end
        else
            obj.Tip = "获得" .. v.Name
        end
        v.itemID = obj:get_id()
        if (v.Shop ~= nil and hSys.getTableLen(v.Shop) > 0) then
            for _, s in ipairs(v.Shop) do
                table.insert(itemsShop[s], v.itemID)
            end
        end
        ?>
    call SaveStr(hash_myslk, StringHash("items"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
    <?
    end
end
