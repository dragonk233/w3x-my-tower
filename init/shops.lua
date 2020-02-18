-- shops
for k, v in ipairs(shops) do
    local obj = slk.unit.ngme:new("shops_" .. v.Name)
    obj.Name = v.Name
    obj.pathTex = v.pathTex
    obj.abilList = "Avul,Apit,Aall"
    obj.file = v.file
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 99999
    obj.sight = 1000
    obj.nsight = 1000
    obj.unitSound = v.unitSound or ""
    obj.Makeitems = string.implode(",", itemsShop[v.Name]) or ""
    obj.Sellitems = ""
    obj.UberSplat = ""
    v.UNIT_ID = obj:get_id()
    ?>
    call SaveStr(hash_myslk, StringHash("shops"), <?=k?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("shops"), -1, <?=#shops?>)
<?
