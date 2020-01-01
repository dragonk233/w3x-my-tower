-- 信使使用技能
onCourierSkillUesdTTG = function(u, text)
    htextTag.style(htextTag.create2Unit(u, text, 8, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
end
onCourierSkillUesd = function()
    local u = hevent.getTriggerUnit()
    local skillid = hevent.getTriggerSkill()
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK == nil or abilitiesSLK.Name == nil) then
        return
    end
    if (abilitiesSLK.Name == "火焰吐息") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_hunt_type = "+fire",
                natural_fire = "+2.5"
            }
        )
        heffect.bindUnit("war3mapImported\\eff_demonfire.mdl", game.playerTower[playerIndex], "origin", 45)
    elseif (abilitiesSLK.Name == "霜寒脚步") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_hunt_type = "+ice",
                natural_ice = "+3.5",
                attack_debuff = {
                    move = {
                        odds = "+50",
                        val = "+45",
                        during = "+2.2",
                        model = "+war3mapImported\\eff_icing.mdl"
                    }
                }
            }
        )
        heffect.bindUnit("war3mapImported\\eff_mirage.mdl", game.playerTower[playerIndex], "origin", 45)
    end
end
