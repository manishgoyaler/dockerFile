#docker-machine start default
#for unix , mac
#eval $(docker-machine env default)
#For windows
#FOR /f "tokens=*" %i IN ('docker-machine env default') DO %i
#docker login
#docker commit -m "Added devbox image" -a "Manish goyal" ba57be8a2b16 manishgoyaler/devbox2
#docker push manishgoyaler/devbox
mkdir -p ~/devbox/cassandra

#To run on mac and unix
docker run -it --link dockerfiles_devbox-cassandra_1:cassandra --rm cassandra sh -c 'exec cqlsh "$CASSANDRA_PORT_9042_TCP_ADDR"'
docker exec -it --user=root dockerfiles_devbox-cassandra_1 bash
docker exec -it --user=root dockerfiles_devbox-docker_1 bash
#docker run --rm -it manishgoyaler/devbox  bash
#To exit bash shell "exit" command or enter Ctrl-D

#To run on windows
winpty docker run -it --link dockerfiles_devbox-cassandra_1:cassandra --rm cassandra sh -c 'exec cqlsh "$CASSANDRA_PORT_9042_TCP_ADDR"'
winpty docker exec -it --user=root dockerfiles_devbox-cassandra_1 bash
winpty docker exec -it --user=root dockerfiles_devbox-docker_1 bash
#To exit bash shell "exit" command or enter Ctrl-
