-- towers
towers = {
    E = towers_e,
    D = towers_d,
    C = towers_c,
    B = towers_b,
    A = towers_a,
    S = towers_s,
    SS = towers_ss,
    --SSS = towers_sss
}
local towersTi = 0
for tlv, tow in pairs(towers) do
    if tow ~= nil then
        for i, v in pairs(tow) do
            towersTi = towersTi + 1
            -- 处理塔基数据
            local Ubertip = v.Ubertip
            local obj = slk.unit.Hpal:new("towers_" .. v.Name)

            Primary = v.Primary or "STR"
            v.STR = v.STR or 10
            v.AGI = v.AGI or 10
            v.INT = v.INT or 10
            local tempPower = 0
            if (tlv == "E") then
                tempPower = 1
            elseif (tlv == "D") then
                tempPower = 2
            elseif (tlv == "C") then
                tempPower = 3
            elseif (tlv == "B") then
                tempPower = 5
            elseif (tlv == "A") then
                tempPower = 10
            elseif (tlv == "S") then
                tempPower = 15
            elseif (tlv == "SS") then
                tempPower = 20
            elseif (tlv == "SSS") then
                tempPower = 30
            end
            v.STR = v.STR * tempPower
            v.AGI = v.AGI * tempPower
            v.INT = v.INT * tempPower
            v.STRplus = v.STR * 0.1
            v.AGIplus = v.AGI * 0.1
            v.INTplus = v.INT * 0.1

            Ubertip = Ubertip .. "|n|cffccffcc阶级：" .. tlv .. "|r"
            Ubertip = Ubertip .. "|n|cffff8080攻击：" .. CONST_WEAPON_TYPE[v.weapTp1] .. "(" .. v.cool1 .. "秒/击)|r"
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
            obj.nsight = v.nsight or 1000 -- 夜晚视野
            obj.targs1 = "vulnerable,ground,ward,structure,organic,mechanical,tree,debris,air" --攻击目标
            obj.EditorSuffix = v.EditorSuffix or "#h-lua"
            obj.Propernames = tlv .. "级兵塔"
            obj.abilList = v.abilList or ""
            obj.heroAbilList = ""
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
            obj.scale = v.scale or 1.00 --选择圈
            obj.movetp = v.movetp or "" --移动类型
            obj.moveHeight = v.moveHeight --移动高度
            obj.moveFloor = v.moveHeight * 0.25 --最低高度
            obj.spd = 0
            obj.backSw1 = v.backSw1 or 0.500
            obj.dmgpt1 = v.dmgpt1 or 0.500
            obj.rangeN1 = 750
            obj.cool1 = v.cool1 or 2.00
            obj.armor = "Flesh" -- 被击声音
            obj.targType = "ground" --作为目标类型
            obj.Missileart = v.Missileart -- 箭矢模型
            obj.Missilespeed = 1100 -- 箭矢速度
            obj.Missilearc = 0.05
            obj.weapTp1 = v.weapTp1 or "normal" --攻击类型
            obj.weapType1 = "" --攻击声音
            obj.Primary = Primary
            obj.dmgplus1 = 1 -- 基础攻击
            obj.STR = v.STR
            obj.AGI = v.AGI
            obj.INT = v.INT
            obj.STRplus = v.STRplus
            obj.AGIplus = v.AGIplus
            obj.INTplus = v.INTplus
            v.INDEX = v.Name
            v.TOWER_POWER = tlv
            v.UNIT_ID = obj:get_id()
            -- 塔基物品
            local iobj = slk.item.gold:new("towers_items_" .. v.Name)
            iobj.Name = "[" .. tlv .. "][" .. v.Name .. "]"
            iobj.Tip = "点击替换兵塔：[" .. v.Name .. "]"
            iobj.UberTip = Ubertip .. "|n * 无论兵种是否一致，使用后兵塔会较前提升1级！"
            iobj.Description = Ubertip
            iobj.Art = v.Art
            iobj.scale = 0.80
            iobj.selSize = 80
            iobj.goldcost = tempPower * 2
            iobj.lumbercost = 0
            iobj.sellable = 1
            iobj.cooldownID = UsedID.Tower
            iobj.file = "Objects\\InventoryItems\\Glyph\\Glyph.mdl"
            iobj.abilList = UsedID.Tower
            iobj.perishable = 1
            iobj.powerup = 0
            local hitem = {
                INDEX = v.Name,
                Name = v.Name,
                Art = v.Art,
                goldcost = 0,
                lumbercost = 0,
                perishable = 1,
                powerup = 0,
                WEIGHT = 0,
                OVERLIE = 999,
                ITEM_ID = iobj:get_id(),
                UNIT_ID = v.unitID,
                TOWER_POWER = tlv,
            }
            ?>
            call SaveStr(hash_myslk, StringHash("towers"), <?=towersTi?>, "<?=hSys.addslashes(json.stringify(v))?>")
            call SaveStr(hash_myslk, StringHash("towersItems"), <?=towersTi?>, "<?=hSys.addslashes(json.stringify(hitem))?>")
            <?
        end
    end
end

?>
call SaveInteger(hash_myslk, StringHash("towers"), -1, <?=towersTi?>)
<?