#!/usr/bin/env bash
# Instala o kit Steam Deck + Omarchy para o usuário atual. Idempotente.
# Não altera ~/.config/hypr: os trechos em hypr/ são para você juntar à mão.
set -euo pipefail
cd "$(dirname "$0")"
BIN="$HOME/.local/bin"
mkdir -p "$BIN" "$HOME/.config/systemd/user"

echo "==> scripts em $BIN"
for f in bin/*; do
  dst="$BIN/$(basename "$f")"
  [[ -e "$dst" ]] && cp -a "$dst" "$dst.pre-install.$(date +%s)"
  install -m 755 "$f" "$dst"
done

echo "==> regras udev (sudo)"
sudo install -m 644 udev/*.rules /etc/udev/rules.d/
sudo udevadm control --reload
sudo udevadm trigger

echo "==> wvkbd-deck (wvkbd 0.19.4 + patch)"
tmp=$(mktemp -d)
git clone -q --depth 1 --branch v0.19.4 https://github.com/jjsullivan5196/wvkbd.git "$tmp/wvkbd"
git -C "$tmp/wvkbd" apply "$PWD/wvkbd-deck/wvkbd-deck-0.19.4.patch"
make -C "$tmp/wvkbd" LAYOUT=deskintl >/dev/null
sudo install -m 755 "$tmp/wvkbd/wvkbd-deskintl" /usr/local/bin/wvkbd-deck
rm -rf "$tmp"

echo "==> deck-snapshot (git local da configuração)"
install -m 644 systemd/deck-snapshot.service systemd/deck-snapshot.timer "$HOME/.config/systemd/user/"
systemctl --user daemon-reload
systemctl --user enable --now deck-snapshot.timer

cat <<MSG

Pronto. Falta:
  1. Juntar os trechos de hypr/ ao seu ~/.config/hypr/ (autostart, input, monitors, bindings).
  2. Sair e entrar na sessão (ou reiniciar) para o autostart subir o daemon e o teclado.
  3. Ver MAPA-BOTOES.md.
MSG
