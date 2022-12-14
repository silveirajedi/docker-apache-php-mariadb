import os

dockerinit = os.system("docker-compose up -d")

if dockerinit == 0:
    dockerconfigfiles = os.system("docker container exec projeto-app cp /var/www/html/server-config/php.ini /usr/local/etc/php")
    print("----> Atualizando php.ini")
    dockerapacherw = os.system("docker container exec projeto-app a2enmod rewrite")
    print("----> Executando re-escrita do Apache2...")

    if dockerapacherw == 0:
        dockerapacherestart = os.system("docker container restart projeto-app")
        print("---->  Reiniciando Apache2...")
        print("---->  Atualizando Dependências do Composer...")
        dockerphpcomposer = os.system("docker container exec projeto-app composer update")
        print("\n\n --== SERVIDOR INICIADO ==-- \n\n")

    else:
        print("Não foi possível reiniciar o Apache2. Verifique o status rodando um docker ps")

else:
    print("ERRO!! Docker não inicializado ou Arquivos docker-compose.yml e Dockerfile ausentes!")