# Hello World para iPhone (sem App Store)

App mínimo em SwiftUI, compilado no GitHub Actions (macOS) **sem assinatura**, para ser assinado e instalado pelo Windows com um Apple ID grátis.

## Como funciona
1. A cada push na `main`, o workflow `.github/workflows/build.yml`:
   - gera o projeto com o [XcodeGen](https://github.com/yonaskolb/XcodeGen) a partir de `project.yml`;
   - compila para `generic/platform=iOS` com `CODE_SIGNING_ALLOWED=NO`;
   - publica o artefato `HelloWorld-unsigned.ipa`.
2. Baixe o IPA com `gh run download --name HelloWorld-unsigned-ipa`.
3. Assine e instale com o [Sideloadly](https://sideloadly.io) usando o seu Apple ID. A assinatura com conta grátis vale **7 dias**, e o limite é de 3 apps desse tipo por vez.
4. No iPhone, confie no certificado em **Ajustes → Geral → VPN e Gerenciamento de Dispositivo**. O Modo Desenvolvedor precisa estar ligado.

## Estrutura
- `project.yml`: definição do projeto (bundle id `io.github.rafaelrfs.helloworld`, iOS 17+).
- `Sources/`: código SwiftUI.
