# Utiliser une image officielle Node LTS
FROM node:18-alpine

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le code source dans le conteneur
COPY . .

# Construire l'application si besoin (ex: TypeScript ou build front dans back)
# RUN npm run build  (à activer si nécessaire)

# Exposer le port sur lequel l'app écoute
EXPOSE 3033

# Commande pour démarrer le serveur
CMD ["sh", "-c", "npm run migrate && npm start"]

