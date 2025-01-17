# Dockerfile
FROM dart:3.4 AS builder

WORKDIR /app
COPY . .

# Compile the Dart application
RUN dart compile exe bin/main.dart -o bin/main

# Use a slim base image for the final stage
FROM alpine:3.20

# Install required dependencies
RUN apk add --no-cache libstdc++

COPY --from=builder /runtime /
COPY --from=builder /app/bin/main /app/main
RUN chmod +x /app/main

EXPOSE 8080

CMD ["/app/main"]