# Usa una imagen base más ligera
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 4000

# Ejecuta las migraciones y luego inicia la aplicación
CMD ["sh", "-c", "npm start"]
