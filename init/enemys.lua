-- enemys
for k, v in ipairs(enemys) do
    local obj = slk.unit.hpea:new("this_enemys_" .. v.Name)
    obj.Name = v.Name
    obj.abilList = ""
    obj.file = v.file
    obj.Art = v.Art
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 100
    obj.sight = 500
    obj.nsight = 500
    obj.unitSound = v.unitSound or ""
    v.unitID = obj:get_id()
    ?>
call SaveStr(hash_myslk, StringHash("thisenemys"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
<?
end
