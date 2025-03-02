## Manual installations
 -Install nodejs locally
 -clone the project
 -cd docker-compose-project
 -install the dependencies (npm install)
 - start DB locally
    - docker run -e POSTGRES_PASSWORD=yourpassword -d -p 5435:5432 postgres
    - get DB url
 -change .env file and put your original DB url for field DATABASE_URL
 -npx prisma migrate
 -npx prisma generate
 -npm run build
 -npm run start

 ## Docker installation
 -install docker
 -start postgres
    - docker run -e POSTGRES_PASSWORD=yourpass -d -p 5435:5432 postgres     
 -Build the image - `docker build -t user-project`
 -start the project - `docker run -p 3086:3086 user-project`

 ## docker compose install installation steps
 -install docker, docker compose
 -Run `docker-compose up`


 