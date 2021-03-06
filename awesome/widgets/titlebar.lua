-----------------------------------------------------------------
---------------------     Titlebar      -------------------------
-----------------------------------------------------------------

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
-- Theme Library and Variables
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-- Widget and layout library
local wibox = require("wibox")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = gears.table.join(
        awful.button({ }, 1, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.move(c)
        end),
        awful.button({ }, 3, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.resize(c)
        end)
    )

    awful.titlebar(c) : setup {
        { -- Left
            awful.titlebar.widget.iconwidget(c),
            spacing= 10,

            buttons = buttons,
            layout  = wibox.layout.align.horizontal,
            align="left",
        },
        { -- Middle
            { -- Title
                align  = "center",
spacing=5,
                widget = awful.titlebar.widget.titlewidget(c)
            },
            buttons = buttons,
            layout  = wibox.layout.flex.horizontal
        },
        { -- Right
            awful.titlebar.widget.floatingbutton (c),

            --  awful.titlebar.widget.stickybutton   (c),
         --   awful.titlebar.widget.ontopbutton   (c),
            awful.titlebar.widget.minimizebutton (c),

            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.closebutton    (c),
            layout = wibox.layout.fixed.horizontal()
        },
        layout = wibox.layout.align.horizontal,
    }
end)
