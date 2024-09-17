# Usar a imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Copiar os arquivos da aplicação para o diretório de trabalho
COPY app.py .

# Instalar Flask
RUN pip install flask

# Expor a porta que a aplicação Flask usará
EXPOSE 8080

# Definir o comando para executar a aplicação Flask
CMD ["python", "app.py"]
