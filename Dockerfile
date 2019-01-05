FROM daocloud.io/library/java:openjdk-8-jre-alpine

RUN mkdir /mc_server
WORKDRI /mv_server

ADD server_1_13_2.jar ./server.jar
RUN echo "eula=true" > eula.txt

CMD ['sh', 'start.sh']
EXPORT 25565