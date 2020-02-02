addTowerSkillsx = function(u)
    for k, v in ipairs(game.towersOriginSkill) do
        local abid = v.ABILITY_ID
        if (abid ~= nil and v.Val ~= nil) then
            local Val = v.Val
            if (hskill.has(u, abid)) then
                local name = v.Name
                if (name == "突击匕首" or name == "月神强击" or name == "魔力之源" or name == "屠龙刀" or name == "利爪") then
                    hattr.set(u, 0, {attack_green = "+" .. Val[1]})
                elseif
                    (name == "巾帼" or name == "剑圣" or name == "气定神闲" or name == "风风拳" or name == "牙牙拳" or name == "电激穴道" or
                        name == "加速")
                 then
                    hattr.set(u, 0, {attack_speed = "+" .. Val[1]})
                elseif (name == "皮糙" or name == "肉厚") then
                    hattr.set(u, 0, {life = "+" .. Val[1]})
                elseif (name == "治疗" or name == "精灵守护") then
                    hattr.set(u, 0, {life_back = "+" .. Val[1]})
                elseif
                    (name == "铁壁" or name == "金甲" or name == "矮人之盾" or name == "捍卫守护" or name == "铁石心肠" or
                        name == "坚硬外皮")
                 then
                    hattr.set(u, 0, {defend = "+" .. Val[1]})
                elseif (name == "国王") then
                    hattr.set(u, 0, {defend = "+" .. Val[1], resistance = "+" .. Val[2]})
                elseif
                    (name == "远古身躯" or name == "牛头人" or name == "重拳出击" or name == "骑士精神" or name == "威武体魄" or
                        name == "落难领袖" or
                        name == "汇聚" or
                        name == "浪涛之力")
                 then
                    hattr.set(u, 0, {str_green = "+" .. Val[1]})
                elseif
                    (name == "蛇皮" or name == "修仙之体" or name == "恶魔之躯" or name == "魔爪" or name == "聚气" or name == "海浪之形")
                 then
                    hattr.set(u, 0, {agi_green = "+" .. Val[1]})
                elseif (name == "冥想" or name == "大智慧" or name == "三千年智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1]})
                elseif (name == "六刃智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "古代帝王") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1], agi_green = "+" .. Val[2], int_green = "+" .. Val[3]})
                elseif (name == "塞壬之歌" or name == "甲虫之盔" or name == "洁白无瑕") then
                    hattr.set(u, 0, {resistance = "+" .. Val[1]})
                elseif (name == "石像化" or name == "腰马合一" or name == "折磨耐性") then
                    hattr.set(u, 0, {toughness = "+" .. Val[1]})
                elseif (name == "黑暗舞步" or name == "恶灵披风" or name == "猎影" or name == "虚幻" or name == "无欲无求") then
                    hattr.set(u, 0, {avoid = "+" .. Val[1]})
                elseif (name == "影子替身") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+magic",
                            avoid = "+" .. Val[1]
                        }
                    )
                elseif (name == "猫头鹰怒视" or name == "捕猎者") then
                    hattr.set(u, 0, {aim = "+" .. Val[1]})
                elseif (name == "激灵一箭") then
                    hattr.set(u, 0, {aim = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "鸦仇") then
                    hattr.set(u, 0, {aim = "+" .. Val[1], attack_speed = "+" .. Val[2]})
                elseif (name == "恶魔巫术" or name == "剃骨之刃") then
                    hattr.set(u, 0, {damage_extent = "+" .. Val[1]})
                elseif (name == "野生龙种" or name == "龙骑士") then
                    hattr.set(u, 0, {attack_damage_type = "+dragon"})
                elseif (name == "树木之妖") then
                    hattr.set(u, 0, {attack_damage_type = "+wood"})
                elseif (name == "山岭之灵") then
                    hattr.set(u, 0, {attack_damage_type = "+soil"})
                elseif (name == "水之元素") then
                    hattr.set(u, 0, {attack_damage_type = "+water"})
                elseif (name == "火之元素") then
                    hattr.set(u, 0, {attack_damage_type = "+fire"})
                elseif (name == "随风" or name == "追风") then
                    hattr.set(u, 0, {attack_damage_type = "+wind"})
                elseif (name == "毒龙液") then
                    hattr.set(u, 0, {attack_damage_type = "+poison"})
                elseif (name == "金属元素") then
                    hattr.set(u, 0, {attack_damage_type = "+metal"})
                elseif (name == "战鬼" or name == "魂鬼" or name == "幽鬼灯火") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost"})
                elseif (name == "冰魂") then
                    hattr.set(u, 0, {attack_damage_type = "+ice"})
                elseif (name == "绘画之妙") then
                    hattr.set(u, 0, {attack_damage_type = "+light,dark"})
                elseif (name == "冥王之剑") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,dark,metal"})
                elseif (name == "千年龙骨") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,ice"})
                elseif (name == "神赐之力") then
                    hattr.set(u, 0, {attack_damage_type = "+god,light"})
                elseif (name == "金睛火眼") then
                    hattr.set(u, 0, {attack_damage_type = "+fire,metal"})
                elseif (name == "霹雳化身" or name == "电离之子") then
                    hattr.set(u, 0, {attack_damage_type = "+thunder", attack_speed = "+" .. Val[1]})
                elseif (name == "噬日") then
                    hattr.set(u, 0, {attack_damage_type = "+dark", natural_dark = "+" .. Val[1]})
                elseif (name == "魂丧双鬼") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,dark", attack_green = "+" .. Val[1]})
                elseif (name == "冰雪之殇") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+ice",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "move",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "十月冰封") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "move",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[3],
                                        effect = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
                                    },
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[2],
                                        during = Val[3]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "爱的火种" or name == "火焰之剑") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+fire",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "life_back",
                                        odds = Val[1],
                                        val = Val[2],
                                        during = Val[3],
                                        effect = Val[4]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "水刀") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+water",
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2],
                                        effect = "war3mapImported\\eff_WaterBlast.mdl"
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "海洋之心" or name == "深海之心") then
                    hattr.set(u, 0, {natural_water = "+" .. Val[1]})
                elseif (name == "暗夜之魂" or name == "暗神之魂") then
                    hattr.set(u, 0, {natural_dark = "+" .. Val[1]})
                elseif (name == "大地种子") then
                    hattr.set(u, 0, {natural_wood = "+" .. Val[1]})
                elseif (name == "神启") then
                    hattr.set(u, 0, {natural_god = "+" .. Val[1]})
                elseif (name == "海妖特质") then
                    hattr.set(u, 0, {natural_water_oppose = "+" .. Val[1]})
                elseif (name == "巫术" or name == "中和") then
                    hattr.set(u, 0, {natural_poison_oppose = "+" .. Val[1]})
                elseif (name == "屠龙勇士") then
                    hattr.set(u, 0, {natural_dragon_oppose = "+" .. Val[1]})
                elseif (name == "吞光") then
                    hattr.set(u, 0, {natural_dark_oppose = "+" .. Val[1]})
                elseif (name == "诡秘空间") then
                    hattr.set(
                        u,
                        0,
                        {
                            natural_fire_oppose = "+" .. Val[1],
                            natural_soil_oppose = "+" .. Val[1],
                            natural_water_oppose = "+" .. Val[1],
                            natural_ice_oppose = "+" .. Val[1],
                            natural_wind_oppose = "+" .. Val[1],
                            natural_light_oppose = "+" .. Val[1],
                            natural_dark_oppose = "+" .. Val[1],
                            natural_wood_oppose = "+" .. Val[1],
                            natural_thunder_oppose = "+" .. Val[1],
                            natural_poison_oppose = "+" .. Val[1],
                            natural_ghost_oppose = "+" .. Val[1],
                            natural_metal_oppose = "+" .. Val[1],
                            natural_dragon_oppose = "+" .. Val[1],
                            natural_insect_oppose = "+" .. Val[1],
                            natural_god_oppose = "+" .. Val[1]
                        }
                    )
                elseif (name == "反抗神命") then
                    hattr.set(u, 0, {attack_damage_type = "+absolute", natural_god_oppose = "+" .. Val[1]})
                elseif (name == "针刺外壳") then
                    hattr.set(u, 0, {damage_rebound = "+" .. Val[1]})
                elseif (name == "机械之心") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1], agi_green = "+" .. Val[2], defend = "+" .. Val[3]})
                end
                if (name == "深渊之刃") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+dark",
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "小牛粉碎" or name == "分裂大刀" or name == "分裂狂刀") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif
                    (name == "熊掌战意" or name == "马索格爆锤" or name == "致命剑术" or name == "恩赐解脱" or name == "爆头" or
                        name == "刺客信条" or
                        name == "醉拳" or
                        name == "短棘戟" or
                        name == "长棘戟")
                 then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "knocking",
                                        odds = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "法术研究" or name == "图腾祭奠") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "violence",
                                        odds = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "黑暗之箭" or name == "黑夜之箭" or name == "黑狱之箭") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+dark",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "透彻寒骨" or name == "冰晶") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+ice",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if
                    (table.includes(
                        name,
                        {
                            --attack_green
                            "追魂狩猎",
                            "狂魂狩猎",
                            "狂魂骑猎",
                            "噬魂",
                            --attack_speed
                            "狂战士之血",
                            "鬼枪术"
                        }
                    ))
                 then
                    local a
                    if (name == "追魂狩猎" or name == "狂魂狩猎" or name == "狂魂骑猎" or name == "噬魂") then
                        a = "attack_green"
                    elseif (name == "狂战士之血" or name == "鬼枪术") then
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
                            "蛙毒",
                            "剧毒虾皮细胞",
                            "三昧真火",
                            "撕咬",
                            "无声的死亡旋律",
                            --defend
                            "鬼歌"
                        }
                    ))
                 then
                    local a
                    if (name == "净化" or name == "灵魂净化") then
                        a = "move"
                    elseif
                        (name == "蛊毒" or name == "蛛毒" or name == "腐尸毒" or name == "燃油烧弹" or name == "奇美拉毒液" or
                            name == "蛙毒" or
                            name == "外界毒虫" or
                            name == "剧毒虾皮细胞" or
                            name == "三昧真火" or
                            name == "撕咬" or
                            name == "无声的死亡旋律")
                     then
                        a = "life_back"
                    elseif (name == "鬼歌") then
                        a = "defend"
                    end
                    if (name == "蛙毒" or name == "外界毒虫") then
                        hattr.set(u, 0, {attack_damage_type = "+poison"})
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
                if
                    (name == "震荡光弹" or name == "暴力倾向" or name == "旋风" or name == "魅惑" or name == "撸战棍" or name == "恍惚灯路" or
                        name == "晴天霹雳" or
                        name == "沉痛打击" or
                        name == "深情一吻")
                 then
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
                if (name == "诡异闪电" or name == "狂异闪电" or name == "狂徒闪电" or name == "痛苦链" or name == "神灭斩") then
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
                if (name == "风暴之锤" or name == "离火之锤" or name == "闪电雷霆" or name == "闪电连链" or name == "誓神劈愿") then
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
