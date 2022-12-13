import os

dockerinit = os.system("docker-compose up -d")

if dockerinit == 0:
    dockerapacherw = os.system("docker container exec projeto-app a2enmod rewrite")
    print("[1] ----> Executando re-escrita do Apache2...")

    if dockerapacherw == 0:
        dockerapacherestart = os.system("docker container restart projeto-app")
        print("[2] ---->  Reiniciando Apache2...")
        print("[3] ---->  Atualizando Dependências do Composer...")
        dockerphpcomposer = os.system("docker container exec projeto-app composer update")
        print("\n\n --== SERVIDOR INICIADO ==-- \n\n")

    else:
        print("Não foi possível reiniciar o Apache2. Verifique o status rodando um docker ps")

else:
    print("ERRO!! Docker não inicializado ou Arquivos docker-compose.yml e Dockerfile ausentes!")