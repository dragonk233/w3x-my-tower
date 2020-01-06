getBookPowLevel = function(curWave)
    local bpow = {19, 1, 0}
    if (curWave <= 9) then
        bpow = {9, 1, 0}
    elseif (curWave <= 18) then
        bpow = {9, 2, 0}
    elseif (curWave <= 27) then
        bpow = {19, 3, 1}
    elseif (curWave <= 45) then
        bpow = {5, 19, 1}
    elseif (curWave <= 75) then
        bpow = {3, 15, 1}
    else
        bpow = {0, 9, 1}
    end
    local tarBPows = {}
    for k, v in ipairs(bpow) do
        for i = 1, v, 1 do
            table.insert(tarBPows, k)
        end
    end
    return tarBPows[math.random(1, #tarBPows)]
end

getTowerPowLevel = function(curWave)
    local tpow = {E = 1}
    if (curWave <= 3) then
        tpow = {E = 1}
    elseif (curWave <= 7) then
        tpow = {E = 7, D = 3}
    elseif (curWave <= 15) then
        tpow = {E = 4, D = 6, C = 1}
    elseif (curWave <= 23) then
        tpow = {E = 3, D = 6, C = 2, B = 1}
    elseif (curWave <= 35) then
        tpow = {D = 4, C = 6, B = 1}
    elseif (curWave <= 50) then
        tpow = {D = 6, C = 16, B = 4, A = 1}
    elseif (curWave <= 60) then
        tpow = {C = 10, B = 10, A = 1}
    elseif (curWave <= 70) then
        tpow = {C = 9, B = 27, A = 3, S = 1}
    elseif (curWave <= 80) then
        tpow = {B = 10, A = 8, S = 2, SS = 1}
    else
        tpow = {A = 15, S = 30, SS = 5, SSS = 1}
    end
    local targetTPows = {}
    for k, v in pairs(tpow) do
        for i = 1, v, 1 do
            table.insert(targetTPows, k)
        end
    end
    return targetTPows[math.random(1, #targetTPows)]
end
