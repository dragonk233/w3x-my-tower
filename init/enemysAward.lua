-- enemys
for k, v in ipairs(enemysAward) do
    local obj = slk.unit.hfoo:new("this_enemys_award_" .. v.Name)
    obj.Name = "[AWARD]" .. v.Name
    obj.abilList = ""
    obj.upgrades = ""
    obj.file = v.file
    obj.Art = "ReplaceableTextures\\CommandButtons\\BTNGlyph.blp"
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 100
    obj.spd = 150
    obj.sight = 500
    obj.nsight = 500
    obj.unitSound = v.unitSound or ""
    obj.weapsOn = 0
    obj.movetp = v.movetp or "foot"--移动类型
    obj.moveHeight = v.moveHeight or 0 --移动高度
    obj.moveFloor = (v.moveHeight or 0) * 0.25 --最低高度
    obj.regenHP = 0
    obj.regenType = ""
    obj.def = 0
    v.TYPE = "award"
    v.UNIT_ID = obj:get_id()
    ?>
call SaveStr(hash_myslk, StringHash("thisenemysaward"), <?=k?>, "<?=hSys.addslashes(json.stringify(v))?>")
<?
end
?>
call SaveInteger(hash_myslk, StringHash("thisenemysaward"), -1, <?=#enemysAward?>)
<?