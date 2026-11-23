FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY zhichuan-admin.jar app.jar
# JVM参数，小服务器限制内存
ENTRYPOINT ["java","-Xms256m","-Xmx512m","-jar","app.jar"]
EXPOSE 10077
