import os
import webbrowser

dockerinit = os.system("docker-compose up -d")
url = 'http://localhost'

chrome_path = 'C:/Program Files/Google/Chrome/Application/chrome.exe %s'

if dockerinit == 0:
    dockerapacherw = os.system("docker container exec projeto-app a2enmod rewrite")
    print("[1] ----> Executando re-escrita do Apache2...")

    if dockerapacherw == 0:
        dockerapacherestart = os.system("docker container restart projeto-app")
        print("[2] ---->  Reiniciando Apache2...")
        print("[3] ---->  Atualizando Dependências do Composer...")
        dockerphpcomposer = os.system("docker container exec projeto-app composer update")

    else:
        print("Não foi possível reiniciar o Apache2. Verifique o status rodando um docker ps")
    print("\n\n --== TUDO PRONTO!!! ==--\n criado por Leandro Silveira \n\n")
    webbrowser.get(chrome_path).open(url)
else:
    print("ERRO!! Docker não inicializado ou Arquivos docker-compose.yml e Dockerfile ausentes!")