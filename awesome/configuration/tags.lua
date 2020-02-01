-----------------------------------------------------------------
---------------------     Tags      -----------------------------
-----------------------------------------------------------------

-- Standard awesome library
local awful = require("awful")
local gears = require("gears")
local _M = {}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get ()
  local tags = {}

  local tagpairs = {
    names  = {
      " A ", " W ", " E ",
      " S ", " O ",
      " M ", " E ", " W ", " M " },


  }

  awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tagpairs.names, s, tagpairs.layout)
   tags [s] = {
      shape  = gears.shape.rounded_rect,
   }
  end)
  
  return tags
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable(
  {}, 
  { __call = function(_, ...) return _M.get(...) end }
)
