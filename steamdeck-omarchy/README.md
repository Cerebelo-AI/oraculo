# Steam Deck OLED + Omarchy, sem teclado

Parte do [Oráculo by Samir · Cerebelo.AI](https://github.com/Cerebelo-AI/oraculo).

Transforma um Steam Deck OLED rodando [Omarchy](https://omarchy.org) 4 (Arch + Hyprland) num
computador de bolso usável só com os controles, a tela de toque e a voz. Sem Steam e sem Steam Input:
o controle é lido direto do HID.

Testado no Steam Deck OLED (1 TB) com Omarchy 4.0.4, Hyprland 0.56 e kernel 7.2. Mapa atual: v7.12.

## O que vem aqui

| Caminho | Função |
|---|---|
| `bin/steamdeck-buttons` | Daemon Python (evdev/uinput). Lê o controle em `/dev/hidrawN`, faz *grab* do teclado do firmware e cria um teclado e um mouse virtuais. Tap/segurar por botão, camada extra no "…", sticks como setas/foco, giroscópio como mouse, trava de arrasto, zoom. |
| `bin/steamdeck-osk` + `wvkbd-deck/` | Teclado na tela (wvkbd 0.19.4 com patch: modificadores em trava, layout do Deck). |
| `bin/mosaico` | Launcher GTK4/libadwaita em grade, pensado para toque. Uma instância só: chamar de novo fecha. |
| `bin/deck-snapshot` + `systemd/` | Guarda a versão real de cada arquivo customizado num git local (no boot e a cada 10 min) e faz push para um remote privado, se houver. |
| `hypr/` | Trechos de configuração do Hyprland (Lua do Omarchy 4): tela girada, toque preso ao painel, autostart, atalhos. |
| `udev/` | Acesso ao hidraw do controle e ao `/dev/uinput` para o usuário da sessão. |
| `sddm/` | Greeter com teclado na tela, para digitar a senha sem teclado físico. |
| `MAPA-BOTOES.md` | O que cada botão faz. |

## Instalação

Leia o script antes: ele instala regras udev (com `sudo`) e compila o wvkbd.

```bash
git clone https://github.com/Cerebelo-AI/oraculo-steamdeck-omarchy.git
cd oraculo-steamdeck-omarchy
./install.sh
```

Depois, junte os trechos de `hypr/` aos seus arquivos em `~/.config/hypr/`. O instalador **não**
sobrescreve a sua configuração do Hyprland.

Dependências: `python-evdev`, `python-gobject`, `gtk4`, `libadwaita`, `wayland`, `libxkbcommon`,
`pango`, `cairo`, `scdoc`, `rsync`, `git`. Ditado opcional: [Wispr Flow](https://wisprflow.ai)
(segurar Steam) e [Voxtype](https://github.com/peteonrails/voxtype) offline (segurar Select).

## Personalizar

Os mapeamentos ficam no dicionário `MAP` (e `CHORD`, para a camada "…") no começo de
`bin/steamdeck-buttons`. Start e Select chamam `tarefas` e `iniciar`, TUIs pessoais que não fazem
parte deste repositório. Troque essas ações pelas suas.

## Cuidados

- Ao abrir o hidraw, o controle dispara uma rajada de "volume down". O daemon salva e restaura o áudio
  sozinho.
- Reiniciar o daemon devolve as teclas do firmware (setas/Enter/Esc) por uns 6 s.
- Se o daemon cair, o controle volta ao modo "lizard" do firmware: D-pad = setas, trackpad = mouse.
