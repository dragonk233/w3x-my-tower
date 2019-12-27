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
