-- units
for k, v in ipairs(units) do
    local obj = slk.unit.hpea:new("this_units_" .. v.Name)
    obj.Name = v.Name
    obj.abilList = v.abilList or ""
    obj.file = v.file
    obj.Art = v.Art
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = v.HP
    obj.sight = v.sight
    obj.nsight = v.nsight
    obj.unitSound = v.unitSound or ""
    v.unitID = obj:get_id()
    ?>
call SaveStr(hash_myslk, StringHash("thisunit"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
<?
end
