local abEffects = {
    {
        Name = "影子兵塔特效", 
        TargetArt = "war3mapImported\\eff_NatureAura.mdl",
    },
    {
        Name = "金耀翅膀特效", 
        TargetArt = "war3mapImported\\eff_Divine_Wings_Borderless.mdl",
        Targetattach="chest",
    },
    {
        Name = "金耀虚空特效", 
        TargetArt = "war3mapImported\\eff_Void_Rift_Orange.mdl",
    },
    {
        Name = "幻紫翅膀特效", 
        TargetArt = "war3mapImported\\eff_Void_Wings_Borderless.mdl",
        Targetattach="chest",
    },
    {
        Name = "幻紫虚空特效", 
        TargetArt = "war3mapImported\\eff_Void_Rift_II_Purple.mdl",
    },
    {
        Name = "祝福星光特效", 
        TargetArt = "war3mapImported\\eff_HolyBlessing.mdl",
    },
    {
        Name = "邪鬼怨灵特效", 
        TargetArt = "war3mapImported\\eff_wraith.mdl",
    },
}

local abEffectsItem = {
    {
        Name = "金耀虚空翅膀套装", 
        Art = "war3mapImported\\icon_item_Holiday_Christmas_Present_01",
    },
    {
        Name = "幻紫虚空翅膀套装", 
        Art = "war3mapImported\\icon_item_Holiday_Christmas_Present_01",
    },
    {
        Name = "祝福星光特效", 
        Art = "war3mapImported\\icon_item_Holiday_Christmas_Present_01",
    },
    {
        Name = "邪鬼怨灵特效", 
        Art = "war3mapImported\\icon_item_Holiday_Christmas_Present_01",
    },
}

for k,v in pairs(abEffects) do
    local obj = slk.ability.AItg:new("tse_".. v.Name)
    local Name = v.Name
    local Tip = v.Name
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = v.Name
    obj.Buttonpos1 = 0
    obj.Buttonpos2 = 0
    obj.DataA1 = 0
    obj.TargetArt = v.TargetArt or ""
    obj.Targetattachcount = 1
    obj.Targetattach = v.Targetattach or "origin"
    local ab = {
        INDEX = v.Name,
        ABILITY_ID = obj:get_id()
    }
    ?>
    call SaveStr(hash_myslk, StringHash("tower_shadow_effect"), <?=k?>, "<?=string.addslashes(json.stringify(ab))?>")
    <?
end

for k,v in pairs(abEffectsItem) do
    local iobj = slk.item.gold:new("tse_items_" .. v.Name)
    iobj.Name = "[礼包][" .. v.Name .. "]"
    iobj.Tip = "打开礼包获得特效：[" .. v.Name .. "]"
    iobj.UberTip = "打开礼包获得特效:"..hColor.yellow(v.Name).."|n可重复替换使用，但只能同时生效1种特效"
    iobj.Description = "打开礼包获得特效:"..hColor.yellow(v.Name).."|n可重复替换使用，但只能同时生效1种特效"
    iobj.Art = v.Art
    iobj.scale = 1.10
    iobj.selSize = 80
    iobj.goldcost = 0
    iobj.lumbercost = v.lumbercost or 0
    iobj.sellable = 1
    iobj.cooldownID = UsedID.EffectModel
    iobj.stockRegen = 120
    iobj.file = "Objects\\InventoryItems\\CrystalShard\\CrystalShard.mdl"
    iobj.abilList = UsedID.EffectModel
    iobj.perishable = 0
    iobj.powerup = 0
    iobj.stockMax = 1
    iobj.stockRegen = 10
    local hitem = {
        INDEX = v.Name,
        Name = v.Name,
        Art = v.Art,
        goldcost = 0,
        lumbercost = 0,
        perishable = 0,
        powerup = 0,
        WEIGHT = 0,
        OVERLIE = 999,
        ITEM_ID = iobj:get_id(),
    }
    ?>
    call SaveStr(hash_myslk, StringHash("tower_shadow_effect_item"), <?=k?>, "<?=string.addslashes(json.stringify(hitem))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("tower_shadow_effect"), -1, <?=#abEffects?>)
call SaveInteger(hash_myslk, StringHash("tower_shadow_effect_item"), -1, <?=#abEffectsItem?>)
<?