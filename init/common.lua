UsedID = {
    Tower = 0, --塔使用技能
    Courier = 0, --信使使用技能
    BookRed = 0, --红技能书使用技能
    BookYellow = 0, --黄技能书使用技能
}
UsedIDConfig = {
    Tower = {
        CasterArt = "Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl",
        Cool = 2,
    },
    Courier = {
        CasterArt = "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl",
        Cool = 2,
    },
    BookRed = {
        CasterArt = "Abilities\\Spells\\Items\\AIsm\\AIsmTarget.mdl",
        Cool = 0,
    },
    BookYellow = {
        CasterArt = "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl",
        Cool = 0,
    },
}

for k, _ in pairs(UsedID) do
    local oobTips = "UsedID_" .. k
    local oob = slk.ability.AIgo:new("UsedID_" .. k)
    oob.Effectsound = ""
    oob.Name = oobTips
    oob.Tip = oobTips
    oob.Ubertip = oobTips
    oob.Art = ""
    oob.TargetArt = ""
    oob.Targetattach = ""
    oob.DataA1 = 0
    oob.Art = ""
    oob.CasterArt = UsedIDConfig[k].CasterArt
    oob.Cool = UsedIDConfig[k].Cool
    UsedID[k] = oob:get_id()
end

--阶级技能
local unitPower = {
    "SSS", "SS", "S", "A", "B", "C", "D", "E"
}
for _, v in ipairs(unitPower) do
    local obj = slk.ability.Aamk:new("abilities_unit_power_" .. v)
    local Name = "阶级 - [" .. hColor.yellow(v) .. "]"
    local Tip = "阶级 - [" .. hColor.yellow(v) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "这是一个" .. hColor.yellow(v) .. "阶的单位"
    obj.Buttonpos1 = 2
    obj.Buttonpos2 = 0
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "war3mapImported\\icon_pas_Letter_" .. v .. ".blp"
    local ab = {
        ABILITY_ID = obj:get_id(),
        ABILITY_BTN = v,
    }
    ?>
call SaveStr(hash_myslk, StringHash("abilities_unit_power"), StringHash("<?=v?>"), "<?=hSys.addslashes(json.stringify(ab))?>")
<?
end

--等级技能
local unitLevels = {
    "此单位天赋奇差",
    "几乎是最差的天赋了",
    "勉强能算是有天赋",
    "还算过得去，但不算太好",
    "中规中矩的天赋能力",
    "已经超越了50%的人了",
    "不错的天赋，让人觉得给力",
    "优秀！优秀！上乘天赋",
    "天赋异禀，能力绝佳",
    "惊天天赋！举世无双",
}
for l=0,9,1 do
    local obj = slk.ability.Aamk:new("abilities_unit_level_" .. l)
    local Name = "天赋等级 - [Lv" .. hColor.yellow(l) .. "]"
    local Tip = "天赋等级 - [Lv" .. hColor.yellow(l) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "这是一个天赋为" .. hColor.yellow(l) .. "级的单位|n"..hColor.skyLight(unitLevels[(l+1)])
    obj.Buttonpos1 = 3
    obj.Buttonpos2 = 0
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "war3mapImported\\icon_pas_Lv" .. l .. ".blp"
    local ab = {
        ABILITY_ID = obj:get_id(),
        ABILITY_BTN = v,
    }
    ?>
call SaveStr(hash_myslk, StringHash("abilities_unit_level"), <?=l?>, "<?=hSys.addslashes(json.stringify(ab))?>")
<?
end