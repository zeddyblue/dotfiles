pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

-- Theme handling library
local beautiful = require("beautiful")

-- Miscellanous awesome library
local menubar = require("menubar")

RC = {} -- global namespace, on top before require any modules
RC.vars = require("configuration.user-variables")
modkey = RC.vars.modkey

-- Error handling
require("configuration.error-handling")

-- Themes
require("configuration.theme")

-- -- --
require("configuration.helpers")
-- Calling All Module Libraries

-- Custom Local Library
local configuration = {
  layouts = require("configuration.layouts"),
  tags    = require("configuration.tags"),
  menu    = require("configuration.menu"),
  rules   = require("configuration.rules"),
  helpers = require("configuration.helpers"),
}

-- Custom Local Library: Keys and Mouse Binding
local keys = {
  globalbuttons = require("configuration.keys.globalbuttons"),
  clientbuttons = require("configuration.keys.clientbuttons"),
  globalkeys    = require("configuration.keys.globalkeys"),
  clientkeys    = require("configuration.keys.clientkeys"),
  bindtotags    = require("configuration.keys.bindtotags")
}

-- Layouts
RC.layouts = configuration.layouts()

-- Tags
RC.tags = configuration.tags()

-- Menu
RC.mainmenu = awful.menu({ items = configuration.menu() }) -- in globalkeys
RC.launcher = awful.widget.launcher(
  { image = beautiful.awesome_icon, menu = RC.mainmenu }
)
menubar.utils.terminal = RC.vars.terminal
-- Mouse and Key bindings
RC.globalkeys = keys.globalkeys()
RC.globalkeys = keys.bindtotags(RC.globalkeys)

-- Set root
root.buttons(keys.globalbuttons())
root.keys(RC.globalkeys)

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()
-----------------------------------------------------
---------------     Wibar      ------------------
-----------------------------------------------------

-- Statusbar: Wibar
require("widgets.statusbar")
-----------------------------------------------------
---------------    Notifications    -----------------
-----------------------------------------------------

require("widgets.notifications")
-----------------------------------------------------
---------------     Rules      ----------------------
-----------------------------------------------------

awful.rules.rules = configuration.rules(
  keys.clientkeys(),
  keys.clientbuttons()
)

-----------------------------------------------------
---------------     Signals      --------------------
-----------------------------------------------------

-- Signals
require("configuration.signals")

-----------------------------------------------------
---------------     Autostart      ------------------
-----------------------------------------------------
awful.spawn.with_shell("~/.config/awesome/autorun.sh")

awful.spawn.with_shell("numlockx on")


-----------------------------------------------------
------------    Garbage Collection   ----------------
-----------------------------------------------------
 collectgarbage("setpause", 110)
 collectgarbage("setpause", 160)
 collectgarbage("setstepmul", 400)
 collectgarbage("setstepmul", 1000)

