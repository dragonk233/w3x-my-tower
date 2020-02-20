-- 加载h-lua
require "h-lua"

local time = {
    {0.75, 0},
    {0.09, 0},
    {0.11, 0},
    {0.16, 0},
    {1, 0},
    {5.8, 0},
    {30, 0}
}
x = 0
htime.setInterval(
    0.5,
    function()
        for i = 1, 10 do
            for k, v in pairs(time) do
                local ii = 0
                htime.setInterval(
                    v[1],
                    function(t)
                        x = x + 1
                        ii = ii + 1
                        time[k][2] = time[k][2] + 1
                        if (ii > 10) then
                            htime.delTimer(t)
                        end
                    end
                )
            end
        end
        print(x)
    end
)
