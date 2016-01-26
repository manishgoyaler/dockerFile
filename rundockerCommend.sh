#docker pull jdubois/devbox-docker
#docker run --name devbox -w /home/devbox/workspace -v ~/devbox:/home/devbox/workspace:rw -v ~/.m2:/home/devbox/.m2:rw -p 8080:8080 -p 3000:3000 -p 3001:3001 -d -t jdubois/devbox-docker
mkdir -p ~/devbox/cassandra
docker run --name devbox-cassandra -v ~/devbox/cassandra:/var/lib/cassandra -d cassandra:latest
docker run -it --link devbox-cassandra:cassandra --rm cassandra sh -c 'exec cqlsh "$CASSANDRA_PORT_9042_TCP_ADDR"
