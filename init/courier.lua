-- courier
local couriersShopIds = {}
for i, v in ipairs(couriers) do
    -- 处理信使数据
    local Ubertip = "召唤：" .. v.Name .. "|n信使阶级："..hColor.greenLight(v.COURIER_POWER) .. "|n移动速度：" .. hColor.skyLight(v.spd)
    local obj = slk.unit.hfoo:new("couriers_" .. v.Name)
    obj.type = "Peon"
    obj.upgrades = ""
    obj.weapsOn = 0
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
    obj.nameCount = v.nameCount or 1
    obj.Tip = "选择 " .. v.Name
    obj.Name = "[信使]" .. v.Name
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
    if(v.Name == "涅磐火凤凰")then
        obj.abilList = "Avul,AInv," .. string.implode(',',couriersSkillsPhoenix)
    elseif(v.Name == "冰戟剑灵")then
        obj.abilList = "Avul,AInv," .. string.implode(',',couriersSkillsIce)
    else
        obj.abilList = "Avul,AInv," .. string.implode(',',couriersSkills)
    end
    v.INDEX = v.Name
    v.UNIT_ID = obj:get_id()
    -- 信使物品
    local iobj = slk.item.gold:new("couriers_items_" .. v.Name)
    iobj.Name = "[信使][" .. v.Name .. "]"
    iobj.Tip = "购买信使：[" .. v.Name .. "]"
    iobj.UberTip = Ubertip
    iobj.Description = Ubertip
    iobj.Art = v.Art
    iobj.scale = 1.10
    iobj.selSize = 80
    iobj.goldcost = 0
    iobj.lumbercost = v.lumbercost or 0
    iobj.sellable = 1
    iobj.cooldownID = UsedID.Courier
    iobj.stockRegen = 120
    iobj.file = "war3mapImported\\item_ScrollCyan.mdl"
    iobj.abilList = UsedID.Courier
    iobj.perishable = 1
    iobj.powerup = 0
    iobj.stockMax = 1
    iobj.stockRegen = 10
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
        COURIER_POWER = v.COURIER_POWER or "E",
        }
    if(#couriersShopIds < 12)then
        table.insert(couriersShopIds,hitem.ITEM_ID)
    end
    ?>
    call SaveStr(hash_myslk, StringHash("couriers"), <?=i?>, "<?=string.addslashes(json.stringify(v))?>")
    call SaveStr(hash_myslk, StringHash("couriersItems"), <?=i?>, "<?=string.addslashes(json.stringify(hitem))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("couriers"), -1, <?=#couriers?>)
<?
local v = {
    Name = "信使之笼",
}
local obj = slk.unit.ngme:new("shops_" .. v.Name)
obj.Name = v.Name
obj.pathTex = "PathTextures\\8x8SimpleSolid.tga"
obj.abilList = "Aneu,Avul,Apit"
obj.Sellitems = string.implode(',',couriersShopIds)
obj.file = "buildings\\human\\GryphonAviary\\GryphonAviary"
obj.Art = "ReplaceableTextures\\CommandButtons\\BTNGryphonAviary.blp"
obj.modelScale = 0.80
obj.scale = 4.20
obj.HP = 99999
obj.sight = 800
obj.nsight = 800
obj.unitSound = "GryphonAviary"
v.UNIT_ID = obj:get_id()
?>
call SaveStr(hash_myslk, StringHash("shops"), StringHash("<?=v.Name?>"), "<?=string.addslashes(json.stringify(v))?>")
<?
