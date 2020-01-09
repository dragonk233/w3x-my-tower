-- award死亡
awardDead = function()
    game.currentMon = game.currentMon - 1
    hunit.del(triggerUnit, 3)
end
