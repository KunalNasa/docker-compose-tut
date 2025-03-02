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
 -start a new network `docker --network create network_name`
 -start postgres `docker run --network network_name --name postgres -e POSTGRES_PASSWORD=yourpass -d -p 5435:5432 postgres`

 -Build the image - `docker build --network=host -t user-project .`
 -start the project - `docker run -e DATABASE_URL=postgresql://postgres:mypass@postgres:5432/postgres --network network_name -p 8076:8076 user-project`

 ## docker compose install installation steps
 -install docker, docker compose
 -Run `docker-compose up`


 