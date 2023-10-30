# Harry Potter API challenge

Um aplicativo desenvolvido em Flutter que consome a API [HP-API](https://hp-api.onrender.com/) e mostra uma listagem de personagens do universo de Harry Potter.

## Pré visualização

[Demo](https://github.com/marcosanf/hp-api-challenge/assets/32041514/3ac2b026-953d-4c4e-ac5e-81234e90cb8a)

## Instruções para rodar o projeto

Siga as instruções abaixo para configurar e executar o projeto em seu ambiente local.

### Pré-requisitos

- Certifique-se de ter o Flutter instalado. Se você ainda não o fez, siga as [instruções de instalação do Flutter](https://flutter.dev/docs/get-started/install).
- Você também precisará de um emulador ou dispositivo físico configurado para executar o aplicativo.

### Passos para Executar

1. Clone o repositório do projeto para o seu ambiente local:

   ```bash
   git@github.com:marcosanf/hp-api-challenge.git

2. Navegue até o diretório do projeto que foi clonado:

   ```bash
   cd hp-api-challenge

3. Inslale as depedências do projeto, utilizando:

   ```bash
   flutter pub get

4. Utilize o comando a seguir para gerar códigos dos modelos de dados:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs

5. Para executar o aplicativo, utilize o comando a seguir na raiz do projeto:

   ```bash
   flutter run

### Executando os testes

Para executar os testes do projeto, você pode usar o seguinte comando:

   ```bash
   flutter test
