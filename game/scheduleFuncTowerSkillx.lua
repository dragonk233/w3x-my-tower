addTowerSkillsx = function(u)
    for k, v in ipairs(game.towersOriginSkill) do
        local abid = v.ABILITY_ID
        if (abid ~= nil and v.Val ~= nil) then
            local Val = v.Val
            if (hskill.has(u, abid)) then
                if (v.Name == "突击匕首" or v.Name == "月神强击") then
                    hattr.set(u, 0, {attack_white = "+" .. Val[1]})
                elseif (v.Name == "魔力之源") then
                    hattr.set(u, 0, {attack_green = "+" .. Val[1]})
                elseif (v.Name == "巾帼" or v.Name == "气定神闲") then
                    hattr.set(u, 0, {attack_speed = "+" .. Val[1]})
                elseif (v.Name == "皮糙" or v.Name == "肉厚") then
                    hattr.set(u, 0, {life = "+" .. Val[1]})
                elseif (v.Name == "治疗") then
                    hattr.set(u, 0, {life_back = "+" .. Val[1]})
                elseif (v.Name == "铁壁" or v.Name == "捍卫守护") then
                    hattr.set(u, 0, {defend = "+" .. Val[1]})
                elseif (v.Name == "远古身躯" or v.Name == "重拳出击" or v.Name == "骑士精神" or v.Name == "威武体魄") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1]})
                elseif (v.Name == "蛇皮" or v.Name == "修仙之体") then
                    hattr.set(u, 0, {agi_green = "+" .. Val[1]})
                elseif (v.Name == "冥想") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1]})
                elseif (v.Name == "六刃智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (v.Name == "塞壬之歌") then
                    hattr.set(u, 0, {resistance = "+" .. Val[1]})
                elseif (v.Name == "石像化" or v.Name == "腰马合一") then
                    hattr.set(u, 0, {toughness = "+" .. Val[1]})
                elseif (v.Name == "黑暗舞步" or v.Name == "影子替身") then
                    hattr.set(u, 0, {avoid = "+" .. Val[1]})
                elseif (v.Name == "猫头鹰怒视") then
                    hattr.set(u, 0, {aim = "+" .. Val[1]})
                elseif (v.Name == "小牛粉碎" or v.Name == "分裂大刀") then
                    hattr.set(u, 0, {split = "+" .. Val[1], split_range = "=500"})
                elseif (v.Name == "熊掌战意" or v.Name == "马索格爆锤" or v.Name == "刺客信条") then
                    hattr.set(u, 0, {knocking_odds = "+" .. Val[1], knocking = "+" .. Val[2]})
                elseif (v.Name == "法术研究") then
                    hattr.set(u, 0, {violence_odds = "+" .. Val[1], violence = "+" .. Val[2]})
                elseif (v.Name == "野生龙种") then
                    hattr.set(u, 0, {attack_hunt_type = "+dragon"})
                elseif (v.Name == "树木之妖") then
                    hattr.set(u, 0, {attack_hunt_type = "+wood"})
                elseif (v.Name == "山岭之灵") then
                    hattr.set(u, 0, {attack_hunt_type = "+soil"})
                elseif (v.Name == "水之元素") then
                    hattr.set(u, 0, {attack_hunt_type = "+water"})
                elseif (v.Name == "火球术") then
                    hattr.set(u, 0, {attack_hunt_type = "+fire"})
                elseif (v.Name == "海洋之心" or v.Name == "深海之心") then
                    hattr.set(u, 0, {natural_water = "+" .. Val[1]})
                elseif (v.Name == "暗夜之魂") then
                    hattr.set(u, 0, {natural_dark = "+" .. Val[1]})
                elseif (v.Name == "海妖特质") then
                    hattr.set(u, 0, {natural_water_oppose = "+" .. Val[1]})
                end
                if
                    (table.includes(
                        v.Name,
                        {
                            --attack_speed
                            "狂战士之血"
                        }
                    ))
                 then
                    local a
                    if (v.Name == "狂战士之血") then
                        a = "attack_speed"
                    end
                    if (a ~= nil) then
                        hattr.set(
                            u,
                            0,
                            {
                                attack_buff = {
                                    add = {
                                        {
                                            attr = a,
                                            odds = Val[1],
                                            val = Val[2],
                                            during = Val[3],
                                            effect = Val[4]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
                if
                    (table.includes(
                        v.Name,
                        {
                            --move
                            "净化",
                            "灵魂净化",
                            --life_back
                            "蛊毒",
                            "蛛毒",
                            "腐尸毒",
                            "燃油烧弹",
                            "奇美拉毒液",
                            --toughness
                            "悲鸣"
                        }
                    ))
                 then
                    local a
                    if (v.Name == "净化" or v.Name == "灵魂净化") then
                        a = "move"
                    elseif
                        (v.Name == "蛊毒" or v.Name == "蛛毒" or v.Name == "腐尸毒" or v.Name == "燃油烧弹" or v.Name == "奇美拉毒液")
                     then
                        a = "life_back"
                    elseif (v.Name == "悲鸣") then
                        a = "toughness"
                    end
                    if (a ~= nil) then
                        hattr.set(
                            u,
                            0,
                            {
                                attack_debuff = {
                                    add = {
                                        {
                                            attr = a,
                                            odds = Val[1],
                                            val = Val[2],
                                            during = Val[3],
                                            effect = Val[4]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
                if (v.Name == "震荡光弹" or v.Name == "暴力倾向" or v.Name == "旋风" or v.Name == "魅惑" or v.Name == "撸战棍") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "swim",
                                        odds = Val[1],
                                        val = Val[2],
                                        during = Val[3],
                                        effect = Val[4]
                                    }
                                }
                            }
                        }
                    )
                end
                if (v.Name == "诡异闪电" or v.Name == "狂异闪电") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "lightning_chain",
                                        lightning_type = hlightning.type.si_wang_zhi_zhi,
                                        odds = Val[1],
                                        val = Val[2],
                                        qty = 1,
                                        effect = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
                                    }
                                }
                            }
                        }
                    )
                end
                if (v.Name == "风暴之锤" or v.Name == "离火之锤" or v.Name == "闪电雷霆") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "lightning_chain",
                                        odds = Val[1],
                                        qty = Val[2],
                                        val = Val[3],
                                        effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                                    }
                                }
                            }
                        }
                    )
                end
            end
        end
    end
end
