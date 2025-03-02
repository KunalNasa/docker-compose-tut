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

 #Docker installation

 ## docker compose install installation steps
 
 