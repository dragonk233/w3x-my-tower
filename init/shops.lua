-- shopsAbility
local abilityBelongs = {}
if (hSys.getTableLen(shopsAbility) > 0) then
    for k, v in ipairs(shopsAbility) do
        local EditorSuffix = hSys.implode(",", v.BelongTo)
        local obj = slk.ability[v.id]:new("shopsSkills_" .. v.Name)
        obj.Name = v.Name
        obj.DataA1 = v.DataA1
        obj.EditorSuffix = EditorSuffix
        obj.Targs1 = v.Targs1
        obj.Area1 = v.Area1
        v.abilityID = obj:get_id()
        for _, s in ipairs(v.BelongTo) do
            if (abilityBelongs[s] == nil) then
                abilityBelongs[s] = {}
            end
            table.insert(abilityBelongs[s], v.abilityID)
        end
        ?>
    call SaveStr(hash_myslk, StringHash("shopsSkills"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
    <?
    end
end

-- shops
for k, v in ipairs(shops) do
    if (abilityBelongs[v.Name] ~= nil and hSys.getTableLen(abilityBelongs[v.Name])) then
        v.abilList = v.abilList .. "," .. hSys.implode(",", abilityBelongs[v.Name])
    end
    local obj = slk.unit.ngme:new("shops_" .. v.Name)
    obj.Name = v.Name
    obj.pathTex = v.pathTex
    obj.abilList = v.abilList or ""
    obj.file = v.file
    obj.Art = v.Art
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = v.HP
    obj.sight = v.sight
    obj.nsight = v.nsight
    obj.unitSound = ""
    v.unitID = obj:get_id()
    ?>
call SaveStr(hash_myslk, StringHash("shops"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
<?
end
