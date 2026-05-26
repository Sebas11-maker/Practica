# Usamos una imagen ligera de Python
FROM python:3.10-slim

# Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalamos FastAPI y Uvicorn directamente
RUN pip install --no-cache-dir fastapi uvicorn

# Copiamos los archivos del proyecto al contenedor
COPY app.py index.html ./

# Exponemos el puerto en el que correrá la app
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]