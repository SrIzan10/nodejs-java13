FROM node:alpine

RUN apk update

RUN apk add openjdk13 wget

RUN mkdir /lavalink

RUN cd /lavalink && wget https://github.com/freyacodes/Lavalink/raw/master/LavalinkServer/application.yml.example -O application.yml

RUN cd /lavalink && wget https://ci.fredboat.com/repository/download/Lavalink_Build/9447:id/Lavalink.jar

CMD cd /lavalink && java -jar Lavalink.jar