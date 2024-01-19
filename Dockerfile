FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app
#valores padrão para teste (conexão)
ENV HOST=localhost PORT=5432
#valores padrão para teste (login no DB)
ENV USER=root PASSWORD=root DBNAME=root
#copia a versão compilada do programa para o container com o mesmo valor (main)
COPY ./main main
#executa o programa para testar
CMD ["./main"]