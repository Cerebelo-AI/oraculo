-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = 1.6

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Steam Deck internal panel is native portrait (800x1280).
-- transform 3 = 270° → landscape when holding the Deck normally.
hl.monitor({
  output = "eDP-1",
  mode = "preferred",
  position = "auto",
  scale = omarchy_monitor_scale,
  transform = 3,
})

-- Fallback for any additional displays.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Configure a specific external monitor.
-- hl.monitor({ output = "DP-2", mode = "2560x1440@144", position = "0x0", scale = 1 })
