# Stage 1 - build
FROM node:20-alpine AS build

# Dossier de travail
WORKDIR /app

# Copier package.json + package-lock (pour profiter du cache de docker)
COPY package.json ./

# Commande d'installation des dependences
RUN npm ci --silent

# Copier le reste des souces
COPY . .

# Lancement de l'application
RUN npm install

CMD ["npm", "run", "dev"]

# Build de l'app Vue (genere /app/dist)
#RUN npm run build
#
## Stage 2 - serveur Nginx pour servir le build statique
#FROM nginx:stable-alpine
#
## Supprimer la config default si besoin
#RUN rm -rf /usr/share/nginx/html/*
#
## Copier les fichiers build depuis l'etape precedente
#COPY --from=build /app/dist/ /usr/share/nginx/html
#
## Copier une config nginx custom (optionnel - fournie plus bas)
#COPY nginx.conf /etc/nginx/conf.d/default.conf
#
## Exposer le port 80
#EXPOSE 80
#
## Commande par defaut (deja definie par l'image nginx)
#CMD ["nginx", "-g", "daemon off;"]