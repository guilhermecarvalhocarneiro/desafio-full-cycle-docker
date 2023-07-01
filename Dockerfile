#Compilar o código Go
FROM golang:1.16-alpine AS builder

WORKDIR /app

# Copiar o código fonte para o diretório de trabalho
COPY main.go .

# Compilar o código Go
RUN go build -o app

# Estágio 2: Construir a imagem mínima
FROM scratch

# Copiar o binário compilado do estágio anterior
COPY --from=builder /app/app /

# Definir o comando padrão a ser executado quando o contêiner for iniciado
CMD ["/app"]

# Definir uma variável de ambiente para a mensagem
ENV MESSAGE "Full Cycle Rocks!!"
