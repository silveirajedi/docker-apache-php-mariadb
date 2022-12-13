# Docker-Apache-PHP-MariaDB

##### Simples servidor Apache2 com PHP 8.1 (Xdebug + composer) e MariaDB rodando em Docker.

## Versão
3.0

## Sobre

Docker-Apache-PHP-MariaDB é um servidor rodando em Docker que conta com a instalação e configuração do Apache2, PHP 8.1, Xdebug, Composer e MariaDB. 

Para facilitar o acesso e execução dos comandos em Docker um arquivo desenvolvido em Python (Windows OS) e Shell Script (Linux OS | Mac OS) foi criado para administração. 

##### Serviços Configurados:

- Linux
  - git
  - zip
  - build-essential
  - libssl-dev
  - zlib1g-dev
  - libpng-dev
  - libjpeg-dev
  - libfreetype6-dev
- Apache2
- PHP 8.1
  - pdo
  - pdo_mysql
  - gd
- Xdebug 3.2
- Composer 2.1
- MariaDB

## Requisitos

- Docker (https://docs.docker.com/get-docker/)
- Python (https://www.python.org/downloads/) (somente para Windows)

## Instalação

Após a instalação do Docker e do Python criar dentro do repositório do seu sistema a pasta *db_data* para armazenar os arquivos do Banco de Dados MariaDB (caso queira outro repositório altere o arquivo docker-compose.yml).

Se existir no seu projeto dependências do composer crie o arquivo composer.json (arquivo exemplo dentro desse repositório) que ele fará a instalação automática assim que executar o servidor. 

Para iniciar o servidor execute o seguinte comando no Windows:

```bash
python server-up.py
```

No Linux ou Mac: 

```bash
sh linux-mac-server.sh start
```

Para finalizar o servidor execute o seguinte comando no Windows:

```bash
python server-down.py
```

No Linux ou Mac:

```bash
sh linux-mac-server.sh stop
```


## Support

###### Problemas: Se você descobrir algum problema, envie um e-mail para silveira.jedi@gmail.com em vez de usar o rastreador de problemas. - Obrigado

## Credits

- [Leandro Silveira](https://github.com/silveirajedi) (Developer)

## License

The MIT License (MIT).