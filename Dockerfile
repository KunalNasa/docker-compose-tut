FROM node:22-alpine

WORKDIR /app

COPY package* .
COPY prisma .

RUN npm install

COPY . .
ENV DATABASE_URL=postgresql://postgres:mypass@localhost:5432/postgres

RUN npm run build

EXPOSE 8076

CMD ["npm", "run", "dev:docker"]
