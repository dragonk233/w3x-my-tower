--为lua引擎注册你的本机路径
package.path = package.path .. ';Z:\\war3\\hunzsig-warcraft3\\h-lua\\?.lua';
package.path = package.path .. ';Z:\\war3\\hunzsig-warcraft3\\w3x-js-bosskiller\\?.lua';

--加载game
require "game"