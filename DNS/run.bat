docker stop bind9
docker rm bind9

docker build -t bind9 .
docker run -d -p 53:53/udp --name bind9 bind9

