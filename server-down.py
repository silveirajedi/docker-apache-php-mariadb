import os

print("FINALIZANDO SERVIDOR DOCKER...")
dockerclose = os.system("docker-compose down")

if dockerclose == 0:
    print("\n\n --== SERVIDOR FINALIZADO ==--\n criado por Leandro Silveira \n\n")
else:
    print("ERRO!! Não foi possível FINALIZAR o servidor Docker. Verifique se ele realmente foi iniciado")