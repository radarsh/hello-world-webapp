FROM openjdk:8
MAINTAINER Adarsh Ramamurthy <adarsh.ramamurthy@gmail.com>
RUN mkdir -p /work
ADD build/libs/hello-world-0.0.1.jar /work/app.jar
WORKDIR /work
RUN sh -c 'touch /work/app.jar'
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/work/app.jar"]
CMD java -Djava.security.egd=file:/dev/urandom -jar /work/app.jar
EXPOSE 8080

