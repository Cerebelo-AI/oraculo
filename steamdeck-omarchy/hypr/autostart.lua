-- Extra autostart processes.
-- Virtual keyboard for Steam Deck touch (starts hidden; toggle via menu or SUPER+CTRL+K).
o.exec_on_start("~/.local/bin/steamdeck-osk start")
o.exec_on_start("~/.local/bin/steamdeck-osk-lock-watch")
-- Physical Deck buttons via HID (Fable 2026-09-22): Steam = toggle OSK, "..." = Omarchy menu.
o.exec_on_start("~/.local/bin/steamdeck-buttons")
-- Wispr Flow no boot (Nikola 23/09/2026). Espera o daemon criar o teclado virtual
-- para o helper do Wispr enxergá-lo; escala 0.8 = a mesma do .desktop aprovado.
o.exec_on_start("sh -c \"sleep 8; pgrep -x wispr-flow >/dev/null || exec wispr-flow --force-device-scale-factor=0.8\"")
