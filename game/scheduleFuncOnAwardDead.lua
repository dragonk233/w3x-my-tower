-- award死亡
awardDead = function(evtData)
    game.currentMon = game.currentMon - 1
    hunit.del(evtData.triggerUnit, 3)
end
