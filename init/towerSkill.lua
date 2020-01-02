-- towerSkill
towerSkillsKV = {}

local tower_si = 0

--封印技能1
local obj = slk.ability.AEbl:new("couriers_sk_blink_phoenix")
local Name = "展翅"
local Tip = "展翅("..hColor.greenLight("Q")..")"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "Q"
obj.Ubertip = "可以闪烁到地图的任何地方"
obj.Buttonpos1 = 0
obj.Buttonpos2 = 0
obj.hero = 0
obj.levels = 1
obj.DataA1 = 99999
obj.DataB1 = 0
obj.Cool1 = 8
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_FireResistanceTotem_01.blp"
obj.SpecialArt = "war3mapImported\\eff_different_liftoff.mdl"
obj.Areaeffectart = "war3mapImported\\eff_fire_tail.mdl"
table.insert(couriersSkillsPhoenix,obj:get_id())
--火凤凰-火焰吐息
local obj = slk.ability.ANcl:new("couriers_sk_extra_phoenix")
local Name = "火焰吐息"
local Tip = "火焰吐息("..hColor.greenLight("W")..")"
obj.Order = "webon"
obj.DataF1 = "webon"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "W"
obj.Ubertip = "兵塔在45秒内附加火攻击并增强2.5%的火攻击伤害"
obj.Buttonpos1 = 1
obj.Buttonpos2 = 0
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 75
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_Fire_Dragon.blp"
obj.CasterArt = "war3mapImported\\eff_fire_tail.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
