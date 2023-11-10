docker stop $(docker ps -aq)

docker rm $(docker ps -aq)

docker rmi $(docker images -aq)

docker network rm asa-net

docker build -t c01 -f Dockerfile.c01 .

docker build -t c02 -f Dockerfile.c02 .

docker build -t c03 -f Dockerfile.c03 .

docker build -t proxy -f Dockerfile.proxy .

docker network create -d bridge asa-net

docker run -d --net=asa-net --name web01 c01

docker run -d --net=asa-net --name web02 c02

docker run -d --net=asa-net --name web03 c03

docker run -dp 80:80 --net=asa-net --name proxy proxy
