--
for i, v in ipairs(towerRaces) do
    local obj = slk.ability.Aamk:new("abilities_unit_race_" .. v.Name)
    local Name = "种族 - [" .. hColor.green(v.Name) .. "]"
    local Tip = "种族 - [" .. hColor.green(v.Name) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = v.Ubertip .. "|n独特种族技能：|n".. hColor.yellow(v.Text)
    obj.Buttonpos1 = 1
    obj.Buttonpos2 = 0
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = v.Art
    local ab = {
        INDEX = v.Name,
        ABILITY_ID = obj:get_id(),
    }
    ?>
    call SaveStr(hash_myslk, StringHash("abilities_unit_race"), <?=i?>, "<?=hSys.addslashes(json.stringify(ab))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("abilities_unit_race"), -1, <?=#towerRaces?>)
<?