# Memory-Game
--------------

### [![Build Status](https://travis-ci.org/camillagds/Memory-Game.svg?branch=master)](https://travis-ci.org/camillagds/Memory-Game) Travis-CI 

##### Ambientes
* OS: Linux
* Distro: Ubuntu Trusty
* Linguagem: Node.js
* Versões: 0.11, 5.11, 6.0, 6.1

##### Branches
* master
* staging-<versao>

##### Variaveis
* COMMIT = 8 primeiros numeros da variavel TRAVIS_COMMIT
* REPO = Repositório do SVN
* SCALE = Quantidade de Aplicacões

##### Processos
1. **Install** | Constrói a imagem do docker
2. **Install** | Instala as dependências
3. **Build** | Compila a aplicação
4. **Test** | Testa a Aplicação
5. **Build** | Executa o container da imagem do docker
6. **Test** | Testa o container
7. **Publish** | Publica a Imagem no Docker Hub
8. **Publish** | Publica a aplicação como Release no GitHub
9. **Deploy** | Instala a aplicação no Server de Staging
10. **Deploy** | Instala a aplicação no Server de Produção
11. **Test** | Valida o deploy usando o Assertible

### [![Build Status](https://app.snap-ci.com/camillagds/Memory-Game/branch/master/build_image)](https://app.snap-ci.com/camillagds/Memory-Game/branch/master) Snap-CI

1. **Build** | Constrói a aplicação
2. **Test** | Testa a aplicação
3. **Deploy** | Instala a aplicação no Server de Produção
4. **Validation** | Valida o deploy usando o Assertible

### [![Service status](https://assertible.com/apis/b0dac860-6210-494f-97fa-8cd85fea940f/status?api_token=Yfn9z5660h7i1B6I)](https://assertible.com/dashboard#/services/b0dac860-6210-494f-97fa-8cd85fea940f) Assertible

O Assertible ajuda a evitar que bugs o tornem produtivo automatizando testes manuais, executando afirmações contra ambientes de teste e integrando alertas em sua cadeia de ferramentas atual.

### [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy) Heroku

eroku é uma aplicação cloud multi-linguagem que funciona como um PaaS. Ele cuida de toda a infra estrutura e configuração de servidores, bastando que você faça somente o deploy e a aplicação já esteja rodando. 

* https://memory-game-lobinhaxd.herokuapp.com
* https://memory-game-staging-lobinhaxd.herokuapp.com

#### Fork
AngularJS example app that implements the famous memory game of finding matching pairs of cards.  Popular with toddlers everywhere!

Forked from <https://github.com/IgorMinar/Memory-Game>

-------
Licence: MIT

