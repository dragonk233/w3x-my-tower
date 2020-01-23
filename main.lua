--注册路径
package.path = package.path .. ';Z:\\war3\\hunzsig-warcraft3\\h-lua\\?.lua';
package.path = package.path .. ';Z:\\war3\\hunzsig-warcraft3\\w3x-my-tower\\?.lua';

--调试
console = require "jass.console"
openDebug = true
console.enable = openDebug

--加载h-lua
require "h-lua"

--加载game
require "game"
