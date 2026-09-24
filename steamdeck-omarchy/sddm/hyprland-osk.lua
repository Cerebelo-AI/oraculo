-- Hyprland config for SDDM greeter on Steam Deck (touch + virtual keyboard).
hl.config({
  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    force_default_wallpaper = 0,
  },
  animations = {
    enabled = false,
  },
  input = {
    kb_layout = "us",
    kb_variant = "intl",
    kb_options = "compose:caps,shift:both_capslock_cancel",
    touchdevice = {
      transform = 3,
    },
  },
})

-- Match session: Deck panel is native portrait; transform 3 → landscape in hand.
hl.monitor({
  output = "eDP-1",
  mode = "preferred",
  position = "auto",
  scale = "auto",
  transform = 3,
})
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

hl.on("hyprland.start", function()
  -- Visible OSK for password entry; compact height leaves the field readable.
  hl.exec_cmd("env STEAMDECK_OSK_LANDSCAPE_HEIGHT=185 STEAMDECK_OSK_HEIGHT=220 /usr/local/bin/steamdeck-osk start-visible")
end)
