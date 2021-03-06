-----------------------------------------------------------------
---------------------     Theme Elements      -------------------
-----------------------------------------------------------------
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()
local gears = require("gears")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local beautiful = require("beautiful")

-- Inherit default theme
local themes_path = require("gears.filesystem").get_themes_dir()


-- font
theme.font          = "Codename Coder Free 4F Bold 12"


-- Load ~/.Xresources colors and set fallback colors
theme.xbackground = "#1E2026"
theme.xforeground = xrdb.foreground or "#b6b1b1"
theme.xcolor0 = "#282a33" -- dark gray
theme.xcolor1 = "#FA75A2" -- red
theme.xcolor2 = "#0BBDC7" -- green
theme.xcolor3 = "#F0ee6e" -- light orange
theme.xcolor4 =  "#44DDFF" -- purple
theme.xcolor5 =  "#B300A5" -- purple (primary)
theme.xcolor6 =  "#82DDFF" -- light blue
theme.xcolor7 =  "#ebf0f8" -- white
theme.xcolor8 =  "3c3F4C" -- gray (medium-lighter side)
theme.xcolor9 =  "#F02e6e" -- red
theme.xcolor10 =  "#0BBDC7" -- green
theme.xcolor11 =  "#F0EE6E" --orange
theme.xcolor12 =  "#44ddff" -- blue
theme.xcolor13 =  "#B300A5" --light purple
theme.xcolor14 = "#82DDFF" --light blue
theme.xcolor15 = "#eeeeee" --white
theme.xcolor16 = "#4E515B" -- gray (medium)
theme.xcolor17 = "#8265FF" --canary
theme.xcolor18 = "#ADB0BF" -- light gray
theme.xcolor19 = "#490080" -- dark purple
theme.xcolor20 = "#9200FF" -- dark purple
theme.xcolor21 = "#1E2026" -- dark purple
theme.xcolor22 = "#533393" -- dark purple
theme.bg_normal     = theme.xcolor0
theme.bg_focus      = theme.xbackground
theme.bg_urgent     = theme.xcolor0
theme.bg_minimize   = theme.xcolor0
theme.bg_systray    = theme.xcolor16
-- #4E515B
theme.fg_normal     = theme.xforeground
theme.fg_focus      = theme.xcolor7
theme.fg_urgent     = theme.xcolor4
theme.fg_minimize   = theme.xforeground

theme.useless_gap   = dpi(6)
theme.border_width  = dpi(4)

theme.border_normal = theme.xbackground
theme.border_focus  = theme.xcolor5
theme.border_marked = theme.xcolor5

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]


-- Tasklist
-- tasklist_[bg|fg]_[focus|urgent]
theme.tasklist_font = "Codename Coder Free 4F Bold 13"
theme.tasklist_bg_focus = theme.xbackground
theme.tasklist_fg_focus = theme.xforeground
theme.tasklist_bg_urgent = theme.xcolor0
theme.tasklist_fg_urgent = theme.xforeground
theme.tasklist_bg_normal = theme.xcolor0
theme.tasklist_fg_normal = theme.xcolor7
theme.tasklist_shape = gears.shape.square
theme.tasklist_shape_border_width = 0
theme.tasklist_align = "left"
theme.tasklist_font_focus = "Codename Coder Free 4F Bold 15"
theme.tasklist_spacing = 5

-- Titlebars
-- titlebar_[bg|fg]_[normal|focus]
theme.titlebar_bg_focus = theme.xcolor0
theme.titlebar_bg_normal = theme.xbackground
theme.titlebar_fg_focus = theme.xforeground
theme.titlebar_fg_normal = theme.xcolor7
theme.titlebar_font = "Codename Coder Free 4F Bold 21"

-- Tooltips
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
theme.tooltip_fg = theme.fg_normal
theme.tooltip_bg = theme.bg_normal
theme.tooltip_font = "Codename Coder Free 4F Bold 14"
theme.tooltip_border_width = dpi(3)
theme.tooltip_border_color = xcolor4

-- Notifications
theme.notification_position = "top_right"
theme.notification_border_width = dpi(1.5)
theme.notification_border_radius = dpi(5)
theme.notification_border_color = theme.xforeground
theme.notification_bg = theme.xcolor0
theme.notification_fg = theme.xforeground
theme.notification_crit_bg = theme.xcolor0
theme.notification_crit_fg = theme.xcolor1
theme.notification_opacity = 1
theme.notification_icon_size_normal = dpi(64)
theme.notification_icon_size_selected = dpi(64)
theme.notification_margin = dpi(3)
theme.notification_font = "Codename Coder Free 4F Bold 18"
theme.notification_padding = dpi(3)

-- Edge snap
theme.snap_bg = theme.xcolor7
theme.snap_shape = gears.shape.rounded_rect

-- Prompts
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
theme.prompt_bg = theme.xcolor8
theme.prompt_fg = theme.xforeground
theme.prompt_fg_cursor = theme.xcolor7
theme.prompt_bg_cursor = theme.xcolor7
theme.prompt_font = "Codename Coder Free 4F Bold 13"


-- Menu
theme.menu_bg_focus = theme.xcolor0
theme.menu_fg_focus = theme.xcolor4
theme.menu_bg_normal = theme.xbackground
theme.menu_fg_normal = theme.xcolor7
theme.menu_submenu_icon = ">"
theme.menu_height = dpi(50)
theme.menu_width  = dpi(280)
theme.menu_border_color  = theme.xcolor5
theme.menu_border_width  = dpi (3)
theme.menu_font = "Font Awesome 5 Bold 12"


-- Hotkeys Popup
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
theme.hotkeys_bg = theme.xbackground
theme.hotkeys_fg = theme.xcolor7
theme.hotkeys_border_width = dpi(3)
theme.hotkeys_border_color = theme.xcolor20
theme.hotkeys_shape = gears.shape.rounded_rect
theme.hotkeys_opacity = 0.75
theme.hotkeys_modifiers_fg = theme.xcolor22
theme.hotkeys_label_bg = theme.xcolor16
theme.hotkeys_label_fg = theme.xbackground
theme.hotkeys_font = "Codename Coder Free 4F Bold 14"
theme.hotkeys_description_font = "Codename Coder Free 4F Bold 11"

-- Taglist
theme.taglist_font = "awesomewm-font 32"
theme.taglist_bg = theme.xcolor0
theme.taglist_shape = gears.shape.losange
theme.taglist_bg_focus = theme.xcolor0
theme.taglist_fg_focus = theme.xcolor20
theme.taglist_bg_urgent = theme.xcolor0
theme.taglist_fg_urgent = theme.xcolor17
theme.taglist_bg_occupied = theme.xcolor0
theme.taglist_fg_occupied = theme.xcolor1
theme.taglist_bg_empty = theme.xcolor0
theme.taglist_fg_empty = theme.xbackground
theme.taglist_bg_volatile = theme.xcolor1
theme.taglist_padding = dpi(1)
theme.taglist_margins = dpi(0)
theme.taglist_spacing = dpi(0)

theme.taglist_fg_volatile = theme.xcolor0






-- Generate taglist squares:
local taglist_square_size = dpi(0)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

--Icon Theme 
theme.icon_theme = "/usr/share/icons/Suru++"
--theme.icon_theme = home .. "/.icons/Suru++"

