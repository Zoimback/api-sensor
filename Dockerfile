# Usar la imagen oficial de Python como base
FROM python:3.9-slim

# Actualizar la imagen base
RUN apt-get update && apt-get upgrade

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el script Python desde el directorio actual al contenedor
COPY . /app/

# Instalar las dependencias necesarias
RUN pip install -r requirements.txt

# Ejecutar el script Python
CMD ["python", "main.py"]
