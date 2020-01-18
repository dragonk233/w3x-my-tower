-- TOWER_SUMMON
for k, v in ipairs(TOWER_SUMMON) do
    local obj = slk.unit.ogru:new("tower_summon_" .. v.Name)
    obj.Name = "[召唤]" .. v.Name
    obj.abilList = "Avul,Aloc"
    obj.upgrades = ""
    obj.file = v.file
    obj.Art = "ReplaceableTextures\\CommandButtons\\BTNSentryWard.blp"
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 100
    obj.spd = v.spd or 0
    obj.sight = 500
    obj.nsight = 500
    obj.unitSound = v.unitSound or ""
    obj.weapsOn = 1
    obj.movetp = "foot"
    obj.moveHeight = 0
    obj.moveFloor = 0
    obj.regenHP = 0
    obj.regenType = ""
    obj.def = 0
    obj.cool1 = 1.50
    obj.fused = 0
    obj.weapTp1 = v.weapTp1 or "normal" --攻击类型
    if(v.weapTp1 == "normal")then
        obj.weapType1 = v.weapType1 --攻击声音
    elseif(v.weapTp1 == "missile")then
        obj.Missileart = v.Missileart -- 箭矢模型
        obj.Missilespeed = 900 -- 箭矢速度
        obj.Missilearc = 0.05
    end
    v.TYPE = "summon"
    v.UNIT_ID = obj:get_id()
    ?>
    call SaveStr(hash_myslk, StringHash("tower_summon"), <?=k?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("tower_summon"), -1, <?=#TOWER_SUMMON?>)
<?
