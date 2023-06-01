FROM maven:3.9.2-eclipse-temurin-11-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
ENV CLIENT_ID xyz123
ENV CLIENT_SECRET 123abc
CMD ["mvn", "test"]