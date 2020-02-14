-- 调试
HLUA_DEBUG = false
if (HLUA_DEBUG) then
    console = require "jass.console"
    console.enable = true
end

-- 加载h-lua
require "h-lua"

-- 加载game
require "game"
