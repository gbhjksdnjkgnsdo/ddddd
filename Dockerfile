# Wybierz obraz Node.js
FROM node:20

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj pliki projektu do kontenera
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Skopiuj resztę plików projektu
COPY . .

# Uruchom aplikację na porcie 3000
EXPOSE 3000

# Polecenie startowe
CMD ["npm", "start"]
