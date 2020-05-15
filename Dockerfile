#docker build . -t 127.0.0.1:5000/demo-java:1.0.0
FROM openjdk:8-jre
COPY demo-0.0.1-SNAPSHOT.jar	/phd/
#设置变量
ENV HTTP_PORT=6440
ENV HTTPS_PORT=6443
ENV DB_URL=127.0.0.1:5432
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=test
ENV REDIS_HOST=127.0.0.1
ENV REDIS_PORT=6379
#公开端口
EXPOSE ${HTTP_PORT}
EXPOSE ${HTTPS_PORT}
WORKDIR /phd
#设置启动命令
ENTRYPOINT ["java", "-server", "-jar", "/phd/web-main-0.2.6-beta1.jar"]
