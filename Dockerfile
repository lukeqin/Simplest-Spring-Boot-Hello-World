FROM openjdk:11.0
MAINTAINER email

EXPOSE 9092
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod +x /sbin/entrypoint.sh
ENTRYPOINT ["/sbin/entrypoint.sh"]

RUN mkdir -p /www/orbartal
COPY ./target/*.war /www/orbartal