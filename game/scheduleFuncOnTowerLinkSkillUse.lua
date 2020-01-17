onTowerLinkSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    if (abilitiesSLK.Name == "上场") then
       print("上场了！")
    end
end
