FROM node:22-alpine

WORKDIR /app

COPY package* .
COPY prisma .

RUN npm install

COPY . .
ENV DATABASE_URL=postgresql://postgres:mypass@localhost:5435/postgres?schema=public

RUN npm run build

CMD ["npm", "start"]
