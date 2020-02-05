-- shopsAbility
local abilityBelongs = {}
if (table.len(shopsAbility) > 0) then
    for k, v in ipairs(shopsAbility) do
        local EditorSuffix = string.implode(",", v.BelongTo)
        local obj = slk.ability[v.id]:new("shopsSkills_" .. v.Name)
        obj.Name = v.Name
        obj.DataA1 = v.DataA1
        obj.EditorSuffix = EditorSuffix
        obj.Targs1 = v.Targs1
        obj.Area1 = v.Area1
        v.ABILITY_ID = obj:get_id()
        for _, s in ipairs(v.BelongTo) do
            if (abilityBelongs[s] == nil) then
                abilityBelongs[s] = {}
            end
            table.insert(abilityBelongs[s], v.abilityID)
        end
        ?>
        call SaveStr(hash_myslk, StringHash("shopsSkills"), StringHash("<?=v.Name?>"), "<?=string.addslashes(json.stringify(v))?>")
        <?
    end
end

-- shops
for k, v in ipairs(shops) do
    if (abilityBelongs[v.Name] ~= nil and table.len(abilityBelongs[v.Name])) then
        v.abilList = v.abilList .. "," .. string.implode(",", abilityBelongs[v.Name])
    end
    local obj = slk.unit.ngme:new("shops_" .. v.Name)
    obj.Name = v.Name
    obj.pathTex = v.pathTex
    obj.abilList = v.abilList or ""
    obj.file = v.file
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 99999
    obj.sight = 1000
    obj.nsight = 1000
    obj.unitSound = v.unitSound or ""
    obj.Sellitems = v.Sellitems or string.implode(",", itemsShop[v.Name])
    obj.UberSplat = ""
    v.UNIT_ID = obj:get_id()
    ?>
    call SaveStr(hash_myslk, StringHash("shops"), <?=k?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("shops"), -1, <?=#shops?>)
<?
