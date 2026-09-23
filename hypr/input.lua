-- Deck: teclado us-intl com compose no Caps (mantido) + cedilha via locale (ThinkPad).
hl.env("LC_CTYPE", "pt_BR.UTF-8")
hl.env("PATH", (os.getenv("HOME") or "") .. "/.local/bin:" .. (os.getenv("PATH") or "/usr/bin"))
hl.config({
  input = {
    kb_layout = "us",
    kb_variant = "intl",
    kb_options = "compose:caps,shift:both_capslock_cancel",
    natural_scroll = true,
    touchpad = {
      natural_scroll = true,
      clickfinger_behavior = true,
    },
    -- Tela sensível ao toque do Deck (fts3528) presa à tela interna (Fable, 22/09/2026).
    -- transform 3 acompanha o painel girado (monitors.lua); sem isso o toque cai deslocado.
    touchdevice = { output = "eDP-1", transform = 3 },
    tablet = { output = "eDP-1", transform = 3 },
  },
})
o.window("org.remmina.Remmina", { scroll_mouse = 10.0, scroll_touchpad = 10.0 })
o.window("(^Vncviewer$|TigerVNC)", { scroll_mouse = 10.0, scroll_touchpad = 10.0 })
