htime.setInterval(
    5.00,
    function()
        for k, v in ipairs(hRuntime.attributeGroup.life_back) do
            print(k, hunit.getName(v), his.alive(v))
        end
    end
)
