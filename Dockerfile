FROM daocloud.io/library/java:openjdk-8-jre-alpine

RUN mkdir /mc_server
WORKDIR /mv_server

ADD server_1_13_2.jar ./server.jar
RUN echo "eula=true" > eula.txt

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]

EXPOSE 25565
