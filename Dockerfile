#docker build . -t 127.0.0.1:5000/demo-java:1.0.0
FROM openjdk:8-jre
COPY demo-0.0.1-SNAPSHOT.jar	/phd/
#设置变量
ENV SERVER_PORT=9000
#公开端口
EXPOSE ${SERVER_PORT}
WORKDIR /phd
#设置启动命令
ENTRYPOINT ["java", "-server", "-jar", "/phd/demo-0.0.1-SNAPSHOT.jar"]
