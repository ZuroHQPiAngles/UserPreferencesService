FROM artifacts.platform.avalara.io:443/orl-docker-local/java:openjdk8.432.06-alpine3.20
WORKDIR /
ADD ./target/UserPreferencesService.jar UserPreferencesService.jar
ENTRYPOINT ["java", "-Dprocess.name=UserPreferencesService", "-jar", "UserPreferencesService.jar"]
