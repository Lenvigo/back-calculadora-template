# Usa una imagen base
FROM python:3.11

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos del proyecto al contenedor
COPY . .

# Expón el puerto 8000
EXPOSE 8000

# Comando para ejecutar Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

