FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
COPY prisma ./

# RUN npm install -g nodemon
RUN npm install

COPY . .

ENV DATABASE_URL=postgresql://postgres:mypass@postgres:5432/my_docker_app

EXPOSE 8076

CMD ["npm", "run", "dev:docker"]
