# Utilisation d'une image de base moderne et minimale (réduction de la surface d'attaque)
FROM node:22-alpine

# Définition du répertoire de travail
WORKDIR /app

# Mise à jour forcée du gestionnaire de paquets global pour patcher les failles natives
RUN npm install -g npm@latest

# Copie des fichiers de dépendances (le .dockerignore bloque le reste)
COPY package*.json ./

# Installation stricte des dépendances de production (ignore Jest et autres outils de dev)
RUN npm install --production

# Copie du code applicatif
COPY . .

# Application du principe du moindre privilège : on quitte l'utilisateur root
USER node

# Exposition du port standard
EXPOSE 3000

# Point d'entrée
CMD ["node", "app.js"]
