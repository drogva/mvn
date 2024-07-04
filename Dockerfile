# 기본 베이스 이미지로 OpenJDK 17을 사용합니다.
FROM openjdk:17-alpine

# 애플리케이션 JAR 파일을 /app 디렉토리로 복사합니다.
COPY target/mvn-0.0.1-SNAPSHOT.jar /app/boot.jar

# 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# 포트를 열어줍니다.


# 애플리케이션을 실행합니다.
CMD ["java", "-jar", "boot.jar"]
