-- Deck: teclado virtual (existente) + atalhos portados do ThinkPad (Fable, 22/09/2026).
-- Não portados: F9/PRINT (ditado vai no botão Steam), fix-cursor, XF86PowerOff→hibernate.
o.bind(
  "SUPER + CTRL + K",
  "On-screen keyboard",
  "~/.local/bin/steamdeck-osk toggle",
  { locked = true }
)

hl.unbind("SUPER + ALT + D")
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Screenshot", "omarchy-capture-screenshot")

o.bind("SUPER + SHIFT + V", "Voxtype log", "xdg-terminal-exec --app-id=TUI.float -e voxtype-log")

o.bind("SUPER + I", "Launch apps (iniciar)", {
  launch = "xdg-terminal-exec --app-id=org.omarchy.iniciar -e iniciar",
  focus = "org.omarchy.iniciar",
})

o.bind("SUPER + R", "Retomar projeto/tarefa", {
  launch = "xdg-terminal-exec --app-id=org.omarchy.tarefas -e tarefas --janela",
  focus = "org.omarchy.tarefas",
})
