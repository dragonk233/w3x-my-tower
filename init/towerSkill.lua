-- towerSkill
towerSpxKV = {}

local tower_sabi = 0

local temp_spx = {
    {
        Name = "封印枷锁之一",
        Ubertip = "中阶兵塔，通常能得到解锁",
        Art = "war3mapImported\\icon_pas_Slow_Grey.blp",
        Buttonpos1 = 0,
        Buttonpos2 = 1
    },
    {
        Name = "封印枷锁之二",
        Ubertip = "高阶兵塔，通常能得到解锁",
        Art = "war3mapImported\\icon_pas_Slow_Grey.blp",
        Buttonpos1 = 0,
        Buttonpos2 = 2
    },
    {
        Name = "铁壁",
        Ubertip = "+10护甲",
        Art = "ReplaceableTextures\\PassiveButtons\\PASBTNThickFur.blp",
        Buttonpos1 = 0,
        Buttonpos2 = 1
    }
}
for k, v in pairs(temp_spx) do
    local obj = slk.ability.Aamk:new("abilities_power_spx_" .. v.Name)
    obj.Name = v.Name
    obj.Tip = v.Name
    obj.Ubertip = hColor.yellow(v.Ubertip)
    obj.Buttonpos1 = v.Buttonpos1
    obj.Buttonpos2 = v.Buttonpos2
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = v.Art
    local temp = {
        Name = v.Name,
        ABILITY_ID = obj:get_id()
    }
    towerSpxKV[temp.Name] = temp.ABILITY_ID
    tower_sabi = tower_sabi + 1
    ?>
    call SaveStr(hash_myslk, StringHash("tower_spx_ab"), <?=tower_sabi?>, "<?=string.addslashes(json.stringify(temp))?>")
    <?
end



?>
call SaveInteger(hash_myslk, StringHash("tower_spx_ab"), -1, <?=tower_sabi?>)
<?
