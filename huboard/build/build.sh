docker ps -a | awk '{print $1}' | grep -v CONTAINER | xargs docker rm; docker images | grep huboard-build | awk '{print $3}' | xargs docker rmi
docker build -t penneo/huboard-build .
