FROM vn-k8sharborc.code88.asia/infra/openjdk:11-slim
EXPOSE 8058

ENV JAVA_OPTS="-Xmx1024m"

ADD src/alarm-detection-service-sbapp-1.0.0.jar alarm-detection-service-sbapp-1.0.0.jar

RUN sh -c 'touch /app.jar'

CMD [ "java", "-Duser.timezone=GMT-4", "-jar", "-Dspring.profiles.active=qat", "alarm-detection-service-sbapp-1.0.0.jar", "alarm-detection-service-sbapp-1.0.0.jar" ]
