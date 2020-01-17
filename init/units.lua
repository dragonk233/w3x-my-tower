-- units
for k, v in ipairs(units) do
    local obj = slk.unit.opeo:new("this_units_" .. v.Name)
    obj.Name = "[其他]" .. v.Name
    obj.abilList = v.abilList or ""
    obj.upgrades = ""
    obj.file = v.file
    obj.Art = v.Art
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = v.HP
    obj.spd = v.spd or 0
    obj.sight = v.sight
    obj.nsight = v.nsight
    obj.unitSound = v.unitSound or ""
    obj.weapsOn = v.weapsOn or 0
    obj.regenHP = 0
    obj.regenType = ""
    v.UNIT_ID = obj:get_id()
    ?>
call SaveStr(hash_myslk, StringHash("thisunit"), StringHash("<?=v.Name?>"), "<?=string.addslashes(json.stringify(v))?>")
<?
end
