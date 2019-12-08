-- heros
for _, v in ipairs(heros) do
    -- 处理英雄数据
    local Ubertip = v.Ubertip
    local obj = slk.unit.Hpal:new("heros_" .. v.Name)
    local Primary = v.Primary or "STR"
    local skills = ""

    Ubertip = Ubertip .. "|n|n|cffff8080攻击：" .. herosMap.weaponType[v.weapTp1] .. "(" .. v.rangeN1 .. ") " .. v.cool1 .. "秒/击|r"
    Ubertip = Ubertip .. "|n|cffccffcc摇动：" .. "前(" .. v.dmgpt1 .. ") 后(" .. v.backSw1 .. ")|r"
    if (Primary == "STR") then
        Ubertip = Ubertip .. "|n|cffffff00力量：" .. v.STR .. "(+" .. v.STRplus .. ") *|r"
    else
        Ubertip = Ubertip .. "|n|cffffffcc力量：" .. v.STR .. "(+" .. v.STRplus .. ")|r"
    end
    if (Primary == "AGI") then
        Ubertip = Ubertip .. "|n|cffffff00敏捷：" .. v.AGI .. "(+" .. v.AGIplus .. ") *|r"
    else
        Ubertip = Ubertip .. "|n|cffffffcc敏捷：" .. v.AGI .. "(+" .. v.AGIplus .. ")|r"
    end
    if (Primary == "INT") then
        Ubertip = Ubertip .. "|n|cffffff00智力：" .. v.INT .. "(+" .. v.INTplus .. ") *|r"
    else
        Ubertip = Ubertip .. "|n|cffffffcc智力：" .. v.INT .. "(+" .. v.INTplus .. ")|r"
    end
    Ubertip = Ubertip .. "|n|cffccffff移动：" .. (herosMap.moveType[v.movetp] or "没有") .. "(" .. v.spd .. ")|r"
    if (v.abilList ~= "") then
        --
    end
    if (v.heroAbilList ~= "") then
        --
    end
    if (skills ~= "") then
        Ubertip = Ubertip .. "|n|cffccffcc技能：" .. skills .. "|r"
    end
    obj.Hotkey = ""
    obj.tilesets = 1
    obj.hostilePal = 0
    obj.Requires = "" --需求,全部无限制，用代码限制
    obj.Requirescount = 1
    obj.Requires1 = ""
    obj.Requires2 = ""
    obj.upgrade = ""
    obj.collision = 0.00
    obj.unitShadow = "ShadowFlyer"
    obj.Buttonpos1 = 0
    obj.Buttonpos2 = 0
    obj.death = 0.10
    obj.turnRate = 1.00
    obj.acquire = 1000.00
    obj.weapsOn = 1
    obj.race = "human"
    obj.deathType = 0
    obj.fused = 0
    obj.sides1 = 5 --骰子面
    obj.dice1 = 1 --骰子数量
    obj.regenMana = 0.00
    obj.regenHP = 0.00
    obj.stockStart = 0
    obj.stockRegen = 0
    obj.stockMax = 1
    obj.collision = 16 --接触体积
    obj.def = v.def or 0.00 -- 护甲
    obj.sight = v.sight or 1000 -- 白天视野
    obj.nsight = v.nsight or 600 -- 夜晚视野
    obj.targs1 = "vulnerable,ground,ward,structure,organic,mechanical,tree,debris,air" --攻击目标
    obj.EditorSuffix = v.EditorSuffix or "#h-lua"
    obj.Propernames = v.Propernames or "#h-lua"
    obj.abilList = v.abilList or ""
    obj.heroAbilList = v.heroAbilList or ""
    obj.nameCount = v.nameCount or 1
    if (obj.weapTp1 == "msplash" or obj.weapTp1 == "artillery") then
        --溅射/炮火
        obj.Farea1 = v.Farea1 or 0
        obj.Qfact1 = v.Qfact1 or 0
        obj.Qarea1 = v.Qarea1 or 0
        obj.Hfact1 = v.Hfact1 or 0
        obj.Harea1 = v.Harea1 or 0
        obj.splashTargs1 = obj.targs1 .. ",enemies"
    end
    if (obj.weapTp1 == "mbounce") then
        --弹射
        obj.Farea1 = v.Farea1 or 0
        obj.targCount1 = v.targCount1 or 1
        obj.damageLoss1 = v.damageLoss1 or 0
        obj.splashTargs1 = obj.targs1 .. ",enemies"
    end
    if (obj.weapTp1 == "mline") then
        --穿透
        obj.spillRadius = v.spillRadius or 0
        obj.spillDist1 = v.spillDist1 or 0
        obj.damageLoss1 = v.damageLoss1 or 0
        obj.splashTargs1 = obj.targs1 .. ",enemies"
    end
    if (obj.weapTp1 == "aline") then
        --炮火穿透
        obj.Farea1 = v.Farea1 or 0
        obj.Qfact1 = v.Qfact1 or 0
        obj.Qarea1 = v.Qarea1 or 0
        obj.Hfact1 = v.Hfact1 or 0
        obj.Harea1 = v.Harea1 or 0
        obj.spillRadius = v.spillRadius or 0
        obj.spillDist1 = v.spillDist1 or 0
        obj.damageLoss1 = v.damageLoss1 or 0
        obj.splashTargs1 = obj.targs1 .. ",enemies"
    end
    obj.Tip = "选择 " .. v.Name
    obj.Name = v.Name
    obj.Awakentip = "复活 " .. v.Name
    obj.Revivetip = "复活 " .. v.Name
    obj.Tip = "召唤 " .. v.Name
    obj.Ubertip = Ubertip
    obj.unitSound = v.unitSound -- 声音
    obj.modelScale = v.modelScale --模型缩放
    obj.file = v.file --模型
    obj.Art = v.Art --头像
    obj.scale = v.scale --选择圈
    obj.movetp = v.movetp --移动类型
    obj.moveHeight = v.moveHeight --移动高度
    obj.moveFloor = v.moveHeight * 0.25 --最低高度
    obj.spd = v.spd
    obj.armor = v.armor -- 被击声音
    obj.targType = v.targType --作为目标类型
    obj.Missileart = v.Missileart -- 箭矢模型
    obj.Missilespeed = v.Missilespeed -- 箭矢速度
    obj.Missilearc = v.Missilearc -- 箭矢曲度
    obj.weapTp1 = v.weapTp1 --攻击类型
    obj.weapType1 = v.weapType1 --攻击声音
    obj.backSw1 = v.backSw1 --前摇
    obj.dmgpt1 = v.dmgpt1 --后摇
    obj.rangeN1 = v.rangeN1 --攻击距离
    obj.cool1 = v.cool1 --攻击间隔
    obj.Primary = Primary
    obj.STR = v.STR
    obj.AGI = v.AGI
    obj.INT = v.INT
    obj.STRplus = v.STRplus
    obj.AGIplus = v.AGIplus
    obj.INTplus = v.INTplus
    v.heroID = obj:get_id()
    -- 英雄物品
    local iobj = slk.item.gold:new("heros_items_" .. v.Name)
    iobj.abilList = ""
    iobj.Name = "选择[" .. v.Name .. "]"
    iobj.Tip = "点击选择英雄：" .. v.Name
    iobj.UberTip = Ubertip
    iobj.Description = Ubertip
    iobj.Art = v.Art
    iobj.scale = 0.1
    iobj.goldcost = 0
    iobj.lumbercost = 0
    iobj.sellable = 1
    iobj.cooldownID = ""
    iobj.file = "Objects\\InventoryItems\\tome\\tome.mdl"
    local hitem = {
        Name = v.Name,
        Art = v.Art,
        goldcost = 0,
        lumbercost = 0,
        itemID = iobj:get_id(),
        heroID = v.heroID,
    }
    ?>
    call SaveStr(hash_myslk, StringHash("heros"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
    call SaveStr(hash_myslk, StringHash("herosItems"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(hitem))?>")
    <?
end
