-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
-- omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })

-- iniciar: launcher de sessão (SUPER + I). Janela flutuante e centralizada,
-- fora do tiling da mesa. Mesmo padrão de org.omarchy.about nos defaults.
o.window("org.omarchy.iniciar", { float = true })
o.window("org.omarchy.iniciar", { center = true })
o.window("org.omarchy.iniciar", { size = { 960, 640 } })

-- Wispr Flow: indicador de status (mixer flutuante). Sem bordas, sem moldura,
-- sem sombra, sem roubar foco e posicionado na parte inferior da tela.
-- (22/09/2026, Fable) restrito ao indicador: antes pegava a janela principal e a deixava
-- pinada/flutuante fora da tela do Deck. Regra da principal mais abaixo (wispr-fullscreen).
o.window({ class = "wispr-flow", initial_title = "Flow Status Indicator" }, {
  tag = "-default-opacity",
  float = true,
  pin = true,
  no_initial_focus = true,
  no_dim = true,
  no_shadow = true,
  no_blur = true,
  decorate = false,
  border_size = 0,
  opacity = "1 1",
  move = { "(monitor_w-window_w)/2", "(monitor_h-window_h-40)" },
})
o.window({ class = "wispr-flow", title = "Hub" }, {
  float = true,
  pin = false,
  decorate = true,
  border_size = 2,
  move = { "(monitor_w-window_w)/2", "(monitor_h-window_h)/2" },
})


-- Wispr Flow: o indicador "Status" é só visual. Sem isto, a caixa 440x320 pinada no
-- centro-inferior captura hover/clique e rouba o foco do teclado (2026-09-19).
-- Casa SOMENTE o indicador Status; Hub, login e demais janelas do Wispr continuam focáveis.
o.window({ class = "wispr-flow", title = "^(Status|Flow Status Indicator)$" }, { no_focus = true })
o.window({ class = "wispr-flow", initial_title = "Flow Status Indicator" }, { no_focus = true })

-- Wispr Flow: a janela principal/login tem mínimo 1152x772 (Electron), maior que os
-- 1024x640 lógicos do Deck. Flutuante e pinada ela nascia cortada, sem botão clicável.
-- Aqui ela vai para tela cheia (sai com Y). Status/Hub não são afetados. (Fable, 22/09/2026, wispr-fullscreen)
o.window({ class = "wispr-flow", initial_title = "^Wispr Flow$" }, { float = false, pin = false, fullscreen = true })

-- tarefas: seletor de projetos/tarefas (SUPER + R). Janela flutuante e centralizada,
-- mesmo padrão do iniciar.
o.window("org.omarchy.tarefas", { float = true })
o.window("org.omarchy.tarefas", { center = true })
o.window("org.omarchy.tarefas", { size = { 1200, 700 } })
