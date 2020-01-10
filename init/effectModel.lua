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
        Name = "金耀公正特效", 
        TargetArt = "war3mapImported\\eff_holy_light.mdl",
        Targetattach="chest",
    },
    {
        Name = "金耀天堂特效", 
        TargetArt = "war3mapImported\\eff_HolyRestoration.mdl",
    },
    {
        Name = "金耀精灵特效", 
        TargetArt = "Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireTarget.mdl",
        Targetattach="weapon",
    },
    ------------------------------------------------------------------
    {
        Name = "幻黑翅膀特效", 
        TargetArt = "war3mapImported\\eff_Void_Wings.mdl",--_Borderless
        Targetattach="chest",
    },
    {
        Name = "幻黑迷紫特效", 
        TargetArt = "war3mapImported\\eff_ArcaneAura.mdl",
    },
    {
        Name = "幻黑迷阵特效", 
        TargetArt = "war3mapImported\\eff_Cosmic_Insperation.mdl",
    },
    ------------------------------------------------------------------
    {
        Name = "血色翅膀特效", 
        TargetArt = "war3mapImported\\eff_Chaos_Wings.mdl",
        Targetattach="chest",
    },
    {
        Name = "血色漩涡特效", 
        TargetArt = "war3mapImported\\eff_BloodRitual.mdl",
    },
    {
        Name = "血色符文特效", 
        TargetArt = "war3mapImported\\eff_BloodSigil.mdl",
    },
    ------------------------------------------------------------------
    {
        Name = "青空之翼特效", 
        TargetArt = "war3mapImported\\eff_Nature_Wings.mdl",
        Targetattach="chest",
    },
    {
        Name = "游龙欢悦特效", 
        TargetArt = "war3mapImported\\eff_dragon_shallow_water.mdl",
    },
    {
        Name = "青龙吐息特效", 
        TargetArt = "war3mapImported\\eff_mirage.mdl",
    },
    ------------------------------------------------------------------
    {
        Name = "邪鬼怨灵特效", 
        TargetArt = "war3mapImported\\eff_wraith.mdl",
    },
    {
        Name = "邪鬼阵法特效", 
        TargetArt = "war3mapImported\\eff_VoidSkullAura.mdl",
    },
    {
        Name = "邪鬼符文特效", 
        TargetArt = "war3mapImported\\eff_GatherSouls.mdl",
    },
    {
        Name = "邪鬼之眼特效", 
        TargetArt = "war3mapImported\\eff_RageBuff.mdl",
        Targetattach="head",
    },
    ------------------------------------------------------------------
    {
        Name = "炎炎旋风特效", 
        TargetArt = "war3mapImported\\eff_demonfire.mdl",
    },
    {
        Name = "炎炎领域特效", 
        TargetArt = "war3mapImported\\eff_flame_aura.mdl",
    },
    {
        Name = "炎炎燃烧特效", 
        TargetArt = "war3mapImported\\eff_flame_burning.mdl",
    },
    {
        Name = "炎炎三球特效", 
        TargetArt = "war3mapImported\\eff_three_fireballs.mdl",
    },
}

local abEffectsItem = {
    {
        Name = "超次元套装礼包", 
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
    iobj.Tip = "打开礼包[" .. v.Name .. "]选择特效套装"
    iobj.UberTip = "打开礼包["..hColor.yellow(v.Name).."]选择特效套装|n礼包可重复使用，同时只有1套套装特效生效"
    iobj.Description = "打开礼包["..hColor.yellow(v.Name).."]选择特效套装|n礼包可重复使用，同时只有1套套装特效生效"
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