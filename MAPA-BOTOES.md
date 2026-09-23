# Steam Deck OLED + Omarchy — mapa dos controles (v7.12, 23/09/2026)

Daemon: `~/.local/bin/steamdeck-buttons` (unit `steamdeck-buttons-fable`). Backups versionados ao lado do arquivo (`.v7.11.pre-v7.12` etc.).
Se o daemon cair, o firmware volta sozinho: D-pad = setas, A = Enter, B = Esc, R2/L2 = clique esq/dir, trackpad direito = mouse, trackpad esquerdo = scroll.

## Botões da frente
- Steam — toque: teclado na tela (abre/fecha) · segurar: ditado (Wispr Flow; Voxtype se o Wispr não estiver rodando)
- … (três pontos) — toque: menu Omarchy · segurar + outro botão: camada "…" (abaixo)
- Select (duas janelas, acima do analógico esquerdo) — toque: Mosaico (abre; de novo fecha) · segurar: ditado Voxtype offline
- Start (≡, acima do analógico direito) — toque: Tarefas · segurar: fechar janela (Super+W)

## A B X Y
- A — toque: Enter · segurar: Shift+Enter (quebra de linha sem enviar)
- B — toque: Backspace · segurar: apaga em repetição
- X — toque: print de área (você seleciona) · segurar: print da tela inteira
- Y — toque: Super+F (tela cheia sem borda) · segurar: Super+Alt+F (tela cheia com borda; o teclado empurra a janela)

## D-pad (cruz)
- ↓ copiar · ↑ colar (Ctrl+Shift+C/V em terminal, Ctrl+C/V no resto)
- ← "@" · → "/"

## Gatilhos e grips
- L1 / R1 — toque: foco na janela da esquerda / da direita (sempre anda naquele sentido; igual a Super+←/→)
- L1 segurado + analógico direito — arrasta a janela de lugar dentro da mesma mesa (troca com a vizinha na direção)
- R1 segurado + analógico direito — leva a janela para a mesa: ↑ mesa 1 · → mesa 2 · ↓ mesa 3 · ← mesa 4 (sentido horário a partir de cima); R1 segurado + clique do analógico (R3) = mesa 5. Substitui Super+Shift+número
- L2 / R2 — clique direito / clique esquerdo (firmware)
- L4 / R4 — mesa anterior / próxima
- L5 (grip traseiro esquerdo) — toque: Ctrl+F (localizar) · segurar: Super preso (toque uma tecla)
- R5 (grip traseiro direito) — toque: Espaço · segurar: Ctrl preso (toque uma tecla)

## Analógicos
- Esquerdo — empurrar: Super+seta (foco na janela daquela direção; repete a cada 0,3 s) · clique (L3): trava de arrastar (segura o botão esquerdo do mouse; arraste com o trackpad direito; clique L3 de novo para soltar)
- Direito — empurrar: setas do teclado (cursor em texto, listas; repete como teclado) · clique (R3): Enter
- Giroscópio: move o mouse enquanto o analógico direito está tocado e parado

## Trackpads
- Direito — mouse; clique = clique esquerdo (firmware)
- Esquerdo — scroll (firmware); clique = botão direito do mouse

## Camada "…" (segurar … + botão)
- X gravação de tela (liga/desliga) · Y janela flutuante · A OCR (texto da tela) · B Esc
- Steam cola de atalhos · L1/R1 trocar janela de lugar esq/dir · L4/R4 mover janela de mesa
- L5 pasta Downloads · R5 fechar janela (Super+W) · Start clipboard · Select Iniciar
- D-pad ↑ zoom in (Ctrl+=) · ↓ zoom out (Ctrl+-) · ←/→ zoom 100% (Ctrl+0) · R3 lupa 2x (liga/desliga) · analógico esquerdo: mover janela na direção

## Fluxo sem teclado
segurar Steam (fala) → ← "@" → fala o nome → R5 espaço → A Enter. B apaga. Y segurado para o teclado não cobrir o app.
