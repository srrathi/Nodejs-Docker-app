## TO BUILD A DOCKER IMAGE -> NAVIGATE TO THAT DIRECTORY
`sudo docker build -t node-app-image .`

## TO REMOVE A RUNNING DOCKER APP
`sudo docker rm node-app -f`

## TO VIEW ALL THE RUNNIG CONTAINER
`sudo docker ps`

## TO VIEW ALL THE RUNNED CONTAINERS
`sudo docker ps -a`

## TO VIEW ALL THE VOLUMES
`sudo docker volume ls`

## TO REMOVE A VOLUME
`sudo docker volume rm [VOLUME_NAME]`

## TO REMOVE ALL VOLUMES EXCEPT RUNNING ONES
`sudo docker volume prune`

## TO RUN A DOCKER CONTAINER WITH SYNCED VOLUMES
`sudo docker run -v /home/sitaram-ssd/rohit/DockerNodejs/p1:/app -p 5001:5001 -d --name node-app node-express-app-image`

## TO START BASH TERMINAL IN RUNNIG DOCKER NODE APP 
`sudo docker exec -it node-app bash`

## TO REMOVE A IMAGE OF CONTAINER FROM DOCKER 
`sudo docker rm [IMAGE_ID]`

## TO RUN A SYNCED DOCKER CONTAINER WITHOUT SYNCING NODE MODULES FOLDER
`sudo docker run -v /home/sitaram-ssd/rohit/DockerNodejs/p1:/app -v /app/node_modules -p 5001:5001 -d --name node-app node-express-app-image`

## TO MAKE READ ONLY VOLUMES BINDING
`sudo docker run -v /home/sitaram-ssd/rohit/DockerNodejs/p1:/app:ro -v /app/node_modules -p 5001:5001 -d --name node-app node-express-app-image`

## PORT EXPOSING 
`-p portOnHostComputer:portInCode`

## TO ADD A PORT AS ENVIRONMENT VARIABLE AFTER CHANGING DOCKERFILE
`sudo docker run -v /home/sitaram-ssd/rohit/DockerNodejs/p1:/app:ro -v /app/node_modules --env PORT=4000 -p 5001:4000 -d --name node-app node-express-app-image`

## TO ADD ENVIRONMENT VARIABLE FROM A ENV FILE AFTER CHANGING DOCKERFILE
`sudo docker run -v /home/sitaram-ssd/rohit/DockerNodejs/p1:/app:ro -v /app/node_modules --env-file ./.env -p 5001:4000 -d --name node-app node-express-app-image`

## TO BUILD IMAGE USING DOCKER COMPOSE FILE
`sudo docker-compose up -d`

## TO SHUT DOWN CONTAINER FROM DOCKER COMPOSE AND DELETE ANONYMOUS VOLUME TOO
`sudo docker-compose down -v`

## TO TELL DOCKER COMPOSE TO REBUILD THE IMAGE
`sudo docker-compose up -d --build`

## TO RUN DOCKER COMPOSE FROM DIFFERENT ENVIRONMENT FILES FOR DEV AND PROD ENVIRONMENT
`sudo docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml up -d`

## TO SHUT DOWN CONTAINERS FROM DIFFERENT DOCKER COMPOSE FILES
`sudo docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml down -v`