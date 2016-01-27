mkdir -p ~/devbox/cassandra
mkdir -p ~/devbox/nginx/html
docker run -it --link dockerfile_devbox-cassandra_1:cassandra --rm cassandra sh -c 'exec cqlsh "$CASSANDRA_PORT_9042_TCP_ADDR"'

docker run -it --link dockerfile_devbox-docker_1:dockerfile_devbox-docker --rm dockerfile_devbox-docker sh 
