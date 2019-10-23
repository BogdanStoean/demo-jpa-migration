FROM openjdk:11-jre-slim
VOLUME /tmp
ADD target/demo-jpa-migration.jar app.jar
ADD entrypoint.sh entrypoint.sh
RUN bash -c 'touch /app.jar'
RUN bash -c 'chmod +x /entrypoint.sh'
ENTRYPOINT ["/entrypoint.sh"]
