FROM ubuntu:latest
RUN apt-get update -y && apt-get install default-jre -y
ADD ./var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war OnlineBookStore.war
EXPOSE 8080
CMD java -war OnlineBookStore.war
