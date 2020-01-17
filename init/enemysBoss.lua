-- enemys
for k, v in ipairs(enemysBoss) do
    local obj = slk.unit.opeo:new("this_enemys_boss_" .. v.Name)
    obj.Name = "[BOSS]" .. v.Name
    obj.abilList = ""
    obj.file = v.file
    obj.Art = "ReplaceableTextures\\CommandButtons\\BTNCarrionScarabs.blp"
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 100
    obj.spd = 125
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
    obj.upgrades = ""
    obj.Builds = ""
    v.TYPE = "boss"
    v.UNIT_ID = obj:get_id()
    ?>
call SaveStr(hash_myslk, StringHash("thisenemysboss"), <?=k?>, "<?=string.addslashes(json.stringify(v))?>")
<?
end
?>
call SaveInteger(hash_myslk, StringHash("thisenemysboss"), -1, <?=#enemysBoss?>)
<?