FROM openjdk:11-slim-bullseye
RUN apt-get update && apt-get install -y dos2unix
ENV EULA=TRUE
WORKDIR /minecraft
COPY ./minecraft_server /docker_init
COPY docker-init.sh ../init.sh
RUN dos2unix ../init.sh && chmod +x ../init.sh
RUN dos2unix /docker_init/Install.sh && chmod +x /docker_init/Install.sh
RUN dos2unix /docker_init/settings.sh && chmod +x /docker_init/settings.sh
RUN dos2unix /docker_init/start.sh && chmod +x /docker_init/start.sh
WORKDIR /docker_init
RUN ./Install.sh
WORKDIR /minecraft
EXPOSE 25565
ENTRYPOINT [ "sh", "../init.sh" ]