path=$(pwd)
docker build -t server $path
docker run -d -p 80:81 --name my-container server
container_id=$(docker ps | grep server | awk '{print $1}')
docker exec $container_id bash /etc/nginx/run.sh