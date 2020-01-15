towerSpxKV = {}
local tower_sabi = 0
local tower_sasi = 0
for k, v in pairs(TOWER_ABLI_SPX) do
    local Ubertip = v.Ubertip or ""
    v.Val = v.Val or {}
    if (Ubertip ~= "") then
        for vali = 1, 5, 1 do
            local valmatch = "{val#" .. vali .. "}"
            if (v.Val[vali] == nil) then
                v.Val[vali] = 0
            end
            if (string.find(Ubertip, valmatch) ~= nil) then
                Ubertip = string.gsub(Ubertip, valmatch, "|cffffcc00" .. v.Val[vali] .. "|r")
            else
                vali = 99
            end
        end
    end
    if(v.ODK ~= nil and v.ODK == true)then
        Ubertip = Ubertip .. hColor.red("|n！此技能仅在对抗有明显效果")
    end
    local type = v.TYPE or "common"
    local obj
    if(type == "multiattack")then
        obj = slk.ability.Aroc:new("abilities_power_spx_" .. v.Name)
        obj.hero = 0
        obj.levels = 1
        obj.DataA1 = 0
        obj.DataB1 = 0
        obj.Requires = ""
        obj.DataC1 = math.floor((v.qty or 3) -2)
        obj.Missileart = v.Missileart
        obj.Missilearc = v.Missilearc or 0.05
        obj.Missilespeed = 1100
        obj.Area1 = 750
        obj.targs1 = "vulnerable,ground,ward,structure,organic,mechanical,tree,debris,air,enemies"
    else
        obj = slk.ability.Aamk:new("abilities_power_spx_" .. v.Name)
        obj.hero = 0
        obj.levels = 1
        obj.DataA1 = 0
        obj.DataB1 = 0
        obj.DataC1 = 0
    end
    obj.race = "human"
    obj.Name = v.Name
    obj.Tip = v.Name
    obj.Ubertip = Ubertip
    obj.Buttonpos1 = v.Buttonpos1
    obj.Buttonpos2 = v.Buttonpos2
    obj.Art = v.Art
    v.ABILITY_LEVEL = 1
    v.ABILITY_ID = obj:get_id()
    towerSpxKV[v.Name] = v.ABILITY_ID
    tower_sabi = tower_sabi + 1
    ?>
    call SaveStr(hash_myslk, StringHash("tower_spx_ab"), <?=tower_sabi?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
    if(type == "reborn")then
        local so = slk.ability.AOre:new("abilities_power_spx_" .. v.Name)
        so.hero = 0
        so.levels = 1
        so.DataA1 = 5
        so.Cast1 = 3
        so.Cool1 = 999
        so.race = "human"
        so.Name = v.Name .. "[shadow]"
        so.Tip = v.Name
        so.Ubertip = Ubertip
        so.Buttonpos1 = v.Buttonpos1
        so.Buttonpos2 = v.Buttonpos2
        so.Art = v.Art
        v.ABILITY_LEVEL = 1
        v.ABILITY_ID = obj:get_id()
        tower_sasi = tower_sasi + 1
        ?>
        call SaveStr(hash_myslk, StringHash("tower_spx_ab_so"), <?=tower_sasi?>, "<?=string.addslashes(json.stringify(v))?>")
        <?
    end
end
?>
call SaveInteger(hash_myslk, StringHash("tower_spx_ab"), -1, <?=tower_sabi?>)
call SaveInteger(hash_myslk, StringHash("tower_spx_ab_so"), -1, <?=tower_sasi?>)
<?
