FROM eclipse-temurin:17-alpine AS builder
RUN apk --no-cache add git
RUN apk --no-cache add maven
ARG REPOSITORY
ARG BRANCH
WORKDIR /build
# Clone repository
RUN git clone -b ${BRANCH} --single-branch ${REPOSITORY} .
# Build from source
RUN mvn clean install

FROM eclipse-temurin:17-alpine
WORKDIR /app
COPY --from=builder /build/target/application.jar ./
CMD ["java", "-jar", "application.jar"]