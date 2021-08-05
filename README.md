# Docker-Apache-PHP-MariaDB

##### Simples servidor Apache2 com PHP 7.4 (Xdebug + composer) e MariaDB rodando em Docker.



## Sobre

Docker-Apache-PHP-MariaDB é um servidor rodando em Docker que conta com a instalação e configuração do Apache2, PHP 7.4, Xdebug, Composer e MariaDB. 

Para facilitar o acesso e execução dos comandos em Docker um arquivo desenvolvido em Python (Windows OS) e Shell Script (Linux OS) foi criado para administração. 

##### Serviços Configurados:

- Apache2
- PHP 7.4
  - pdo
  - pdo_mysql
- MariaDB
- Xdebug
- Composer 2.1

## Requisitos

- Docker (https://docs.docker.com/get-docker/)
- Python (https://www.python.org/downloads/)

## Instalação

Após a instalação do Docker e do Python criar dentro do repositório do seu sistema a pasta *db_data* para armazenar os arquivos do Banco de Dados MariaDB (caso queira outro repositório altere o arquivo docker-compose.yml).

Se existir no seu projeto dependências do composer crie o arquivo composer.json (arquivo exemplo dentro desse repositório) que ele fará a instalação automática assim que executar o servidor. 

**[Opcional]** Para que seu Navegador abra automaticamente quando o terminar de executar o servidor verique o sistema operacional que está utilizando e descomente a linha do arquivo *server-up.py* referente ao seu  sistema.

Para iniciar o servidor execute o seguinte comando no Windows:

```bash
python server-up.py
```

No Linux: 

```bash
sh linux-server.sh start
```

Para finalizar o servidor execute o seguinte comando no Windows:

```bash
python server-down.py
```

No Linux:

```bash
sh linux-server.sh stop
```


## Support

###### Segurança: Se você descobrir algum problema relacionado à segurança, envie um e-mail para silveira.jedi@gmail.com em vez de usar o rastreador de problemas. - Obrigado

## Credits

- [Leandro Silveira](https://github.com/silveirajedi) (Developer)

## License

The MIT License (MIT).