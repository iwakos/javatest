FROM java:8

WORKDIR /
COPY . /build

RUN cd /build && ./mvnw package

ENV HOST 0.0.0.0

CMD ["java", "-jar", "/build/target/boot-sample-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080