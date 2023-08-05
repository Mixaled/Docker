path=$(pwd)
docker build -t server:v1 $path
docker run -d -p 80:81 --name my-container server:v1