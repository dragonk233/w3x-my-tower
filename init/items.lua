-- items

itemsIndex = 0
itemsShop = {}

local items = {
    {
        "冷兵器磨坊",
        items_weapon1,
    },
    {
        "火器铁铺",
        items_weapon2,
    },
    {
        "科技车间",
        items_weapon3,
    },
    {
        "营地",
        items_defend1,
    },
    {
        "铁箱子",
        items_defend2,
    },
    {
        "奇异屋",
        items_defend3,
    },
    {
        "稀奇古怪黑科技",
        items_fun,
    },
    {
        "神秘之地",
        items_mystery,
    },
    {
        "combo",
        items_combo,
    },
}

for _, item in ipairs(items) do
    local shopName = item[1]
    if (itemsShop[shopName] == nil) then
        itemsShop[shopName] = {}
    end
    for _, v in ipairs(item[2]) do
        local cd = slkHelper.itemCooldownID(v)
        local abilList = ""
        local usable = 0
        local perishable = v.perishable
        if (cd ~= "AIat") then
            abilList = cd
            usable = 1
            if(perishable == nil)then
                perishable = 1
            end
        else
            if(perishable == nil)then
                perishable = 0
            end
        end
        local lv = v.lv or math.floor(v.goldcost / 7000)
        if(shopName == "combo")then
            v.goldcost = lv * 500
            v.lumbercost = 0
        end
        if(lv < 1)then
            lv = 1
        end
        local obj = slk.item.rat9:new("items_x" .. itemsIndex)
        obj.Name = v.Name
        obj.Description = slkHelper.itemDesc(v)
        obj.Ubertip = slkHelper.itemUbertip(v)
        obj.goldcost = v.goldcost or 1000000
        obj.lumbercost = v.lumbercost or 1000000
        obj.Level = lv
        obj.oldLevel = lv
        obj.Art = v.Art
        obj.file = v.file or "Objects\\InventoryItems\\TreasureChest\\treasurechest.mdl"
        obj.stockStart = v.stockStart or 0
        obj.stockRegen = v.stockRegen or 1
        obj.prio = v.prio or 0
        obj.cooldownID = cd
        obj.abilList = abilList
        obj.ignoreCD = v.ignoreCD or 0
        obj.drop = v.drop or 0
        obj.perishable = perishable
        obj.usable = usable
        obj.powerup = v.powerup or 0
        obj.sellable = v.sellable or 1
        obj.pawnable = v.pawnable or 1
        obj.droppable = v.dropable or 1
        obj.pickRandom = 1
        obj.uses = 1
        local len = #itemsShop[shopName]
        if (shopName ~= "combo" and len < 12) then
            len = len + 1
            obj.HotKey = CONST_HOTKEY[len].HotKey
            obj.Tip = "购买" .. v.Name .. "(" .. hColor.gold(CONST_HOTKEY[len].HotKey) .. ")"
            obj.Buttonpos1 = CONST_HOTKEY[len].Buttonpos1
            obj.Buttonpos2 = CONST_HOTKEY[len].Buttonpos2
        else
            obj.Tip = "获得" .. v.Name
        end
        v.LEVEL = lv
        v.ITEM_ID = obj:get_id()
        if(shopName ~= "combo")then
            v.I_TYPE = "equip"
            table.insert(itemsShop[shopName], v.ITEM_ID)
        else
            v.I_TYPE = "combo"
        end
        itemsIndex = itemsIndex + 1
        ?>
        call SaveStr(hash_myslk, StringHash("items"), <?=itemsIndex?>, "<?=string.addslashes(json.stringify(v))?>")
        <?
    end
end

?>
call SaveInteger(hash_myslk, StringHash("items"), -1, <?=itemsIndex?>)
<?
