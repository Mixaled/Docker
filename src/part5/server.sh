path=$(pwd)
docker build -t server:v1 $path
docker run -d -p 80:81 --name my-container server:v1
container_id=$(docker ps | grep server:v1 | awk '{print $1}')
docker exec $container_id bash /etc/nginx/run.sh