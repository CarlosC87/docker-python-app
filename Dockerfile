# Imagen base de Python
FROM python:3.10-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el código desde el repositorio
ADD https://github.com/CarlosC87/docker-python-app/archive/refs/heads/main.zip /app/code.zip

# Instalar unzip para descomprimir
RUN apt-get update && apt-get install -y unzip && \
    unzip code.zip && \
    mv docker-python-app-main/* . && \
    rm -rf docker-python-app-main code.zip

# Comando de ejecución
CMD ["python", "app.py"]
