# Docker-Apache-PHP-MariaDB

##### Simples Servidor Apache2 com PHP 8.3 (Xdebug + Composer) e MariaDB rodando em Docker.

## Versão
3.3

## Sobre

Docker-Apache-PHP-MariaDB é um servidor rodando em Docker que conta com a instalação e configuração do Apache2, PHP 8.3, Xdebug, Composer e MariaDB. 

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
- PHP 8.3
  - pdo
  - pdo_mysql
  - gd
  - exif tool
- Xdebug 3.3.1
- Composer 2.1
- MariaDB

## Requisitos

- Docker (https://docs.docker.com/get-docker/)
- Python (https://www.python.org/downloads/) (somente para Windows)
- WSL 2 (https://learn.microsoft.com/pt-br/windows/wsl/install) (somente para Windows)

## Instalação

Após a instalação do Docker , Python (Windows) e WSL 2 (Windows) criar dentro do repositório do seu sistema a pasta *db_data* para armazenar os arquivos do Banco de Dados MariaDB (caso queira outro repositório altere o arquivo docker-compose.yml).

Se existir no seu projeto dependências do composer crie o arquivo composer.json (arquivo exemplo dentro desse repositório) que ele fará a instalação automática assim que executar o servidor.

**Windows**

Iniciar/Finalizar Servidor:

```bash
python server-up.py
```

```bash
python server-down.py
```

**Linux ou Mac**

Iniciar/Finalizar Servidor:

```bash
sh linux-mac-server.sh start
```

```bash
sh linux-mac-server.sh stop
```

## Extra

Caso seja necessário alterar configurações do php.ini basta editar o arquivo que se encontra na pasta server-config


## Suporte

###### Qualquer dúvida ou problema envie um e-mail para silveira.jedi@gmail.com... Enjoy ;)

## Créditos

- [Leandro Silveira](https://github.com/silveirajedi) (Developer)

## Licença

The MIT License (MIT).