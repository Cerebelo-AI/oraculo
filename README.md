# Oráculo — by Samir · Cerebelo.AI

Coleção aberta das ferramentas, configurações e ajustes que usamos no dia a dia com Linux
(Omarchy/Hyprland), dispositivos e agentes de IA. Tudo num repositório só, uma pasta por projeto,
cada uma com README e instruções próprias.

## Projetos

| Pasta | O que é |
|---|---|
| [`steamdeck-omarchy/`](steamdeck-omarchy/) | Steam Deck OLED com Omarchy 4 usável **sem teclado físico**: todos os botões remapeados, teclado na tela, launcher por toque, ditado por voz e versionamento automático da configuração. |

## Regras de publicação

1. **Público aqui, pessoal nunca.** Chaves, tokens, senhas, cookies, serial de dispositivo, IPs
   internos, caminhos com nome de usuário e configurações pessoais ficam no repositório **privado** do
   autor. Nada disso entra neste repositório.
2. Todo push e pull request passa pelo [gitleaks](https://github.com/gitleaks/gitleaks), e o secret
   scanning com push protection do GitHub está ligado. Veja [SECURITY.md](SECURITY.md).
3. Projeto novo = pasta nova `<assunto>/` em minúsculas, com README em português dizendo o que foi
   testado e em qual hardware, e uma linha na tabela acima.

Licença: MIT (ver [LICENSE](LICENSE)); exceções indicadas dentro de cada pasta. Feito por Samir
Iásbeck e pelos agentes da [Cerebelo.AI](https://cerebelo.ai).
