towerSpxKV = {}
local tower_sabi = 0
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
    local obj = slk.ability.Aamk:new("abilities_power_spx_" .. v.Name)
    obj.Name = v.Name
    obj.Tip = v.Name
    obj.Ubertip = Ubertip
    obj.Buttonpos1 = v.Buttonpos1
    obj.Buttonpos2 = v.Buttonpos2
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = v.Art
    v.ABILITY_ID = obj:get_id()
    towerSpxKV[v.Name] = v.ABILITY_ID
    tower_sabi = tower_sabi + 1
    ?>
    call SaveStr(hash_myslk, StringHash("tower_spx_ab"), <?=tower_sabi?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("tower_spx_ab"), -1, <?=tower_sabi?>)
<?
