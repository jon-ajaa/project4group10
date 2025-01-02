docker build -t jonajaa/jfc-web:latest .

docker volume create jfc-data

docker run -d --name jfc-container -p 8080:8080 jonajaa/jfc:latest

docker ps

docker logs jfc-container

docker stop jfc-container

docker start jfc-container