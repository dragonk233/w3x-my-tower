addTowerSkillsx = function(u)
    for k, v in ipairs(game.towersOriginSkill) do
        local abid = v.ABILITY_ID
        if (abid ~= nil and v.Val ~= nil) then
            local Val = v.Val
            if (hskill.has(u, abid)) then
                local name = v.Name
                if (name == "突击匕首" or name == "月神强击") then
                    hattr.set(u, 0, {attack_white = "+" .. Val[1]})
                elseif (name == "魔力之源") then
                    hattr.set(u, 0, {attack_green = "+" .. Val[1]})
                elseif (name == "巾帼" or name == "剑圣" or name == "气定神闲") then
                    hattr.set(u, 0, {attack_speed = "+" .. Val[1]})
                elseif (name == "皮糙" or name == "肉厚") then
                    hattr.set(u, 0, {life = "+" .. Val[1]})
                elseif (name == "治疗") then
                    hattr.set(u, 0, {life_back = "+" .. Val[1]})
                elseif (name == "铁壁" or name == "矮人之盾" or name == "捍卫守护") then
                    hattr.set(u, 0, {defend = "+" .. Val[1]})
                elseif (name == "远古身躯" or name == "重拳出击" or name == "骑士精神" or name == "威武体魄") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1]})
                elseif (name == "蛇皮" or name == "修仙之体") then
                    hattr.set(u, 0, {agi_green = "+" .. Val[1]})
                elseif (name == "冥想") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1]})
                elseif (name == "六刃智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "塞壬之歌") then
                    hattr.set(u, 0, {resistance = "+" .. Val[1]})
                elseif (name == "石像化" or name == "腰马合一") then
                    hattr.set(u, 0, {toughness = "+" .. Val[1]})
                elseif (name == "黑暗舞步" or name == "影子替身") then
                    hattr.set(u, 0, {avoid = "+" .. Val[1]})
                elseif (name == "猫头鹰怒视") then
                    hattr.set(u, 0, {aim = "+" .. Val[1]})
                elseif (name == "小牛粉碎" or name == "分裂大刀") then
                    hattr.set(u, 0, {split = "+" .. Val[1], split_range = "=500"})
                elseif (name == "熊掌战意" or name == "马索格爆锤" or name == "刺客信条") then
                    hattr.set(u, 0, {knocking_odds = "+" .. Val[1], knocking = "+" .. Val[2]})
                elseif (name == "法术研究") then
                    hattr.set(u, 0, {violence_odds = "+" .. Val[1], violence = "+" .. Val[2]})
                elseif (name == "野生龙种") then
                    hattr.set(u, 0, {attack_hunt_type = "+dragon"})
                elseif (name == "树木之妖") then
                    hattr.set(u, 0, {attack_hunt_type = "+wood"})
                elseif (name == "山岭之灵") then
                    hattr.set(u, 0, {attack_hunt_type = "+soil"})
                elseif (name == "水之元素") then
                    hattr.set(u, 0, {attack_hunt_type = "+water"})
                elseif (name == "火之元素") then
                    hattr.set(u, 0, {attack_hunt_type = "+fire"})
                elseif (name == "霹雳化身") then
                    hattr.set(u, 0, {attack_hunt_type = "+thunder", attack_speed = "+" .. Val[1]})
                elseif (name == "海洋之心" or name == "深海之心") then
                    hattr.set(u, 0, {natural_water = "+" .. Val[1]})
                elseif (name == "暗夜之魂") then
                    hattr.set(u, 0, {natural_dark = "+" .. Val[1]})
                elseif (name == "海妖特质") then
                    hattr.set(u, 0, {natural_water_oppose = "+" .. Val[1]})
                end
                if
                    (table.includes(
                        name,
                        {
                            --attack_speed
                            "狂战士之血"
                        }
                    ))
                 then
                    local a
                    if (name == "狂战士之血") then
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
                        name,
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
                    if (name == "净化" or name == "灵魂净化") then
                        a = "move"
                    elseif (name == "蛊毒" or name == "蛛毒" or name == "腐尸毒" or name == "燃油烧弹" or name == "奇美拉毒液") then
                        a = "life_back"
                    elseif (name == "悲鸣") then
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
                if (name == "震荡光弹" or name == "暴力倾向" or name == "旋风" or name == "魅惑" or name == "撸战棍") then
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
                if (name == "诡异闪电" or name == "狂异闪电" or name == "狂徒闪电") then
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
                if (name == "风暴之锤" or name == "离火之锤" or name == "闪电雷霆") then
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
