# Use Alpine Linux as the base image
FROM alpine:latest

# Install PostgreSQL client and other dependencies
RUN apk add --no-cache postgresql curl ca-certificates

# Set environment variables
ENV COMMENTO_ORIGIN=http://localhost:8080
ENV COMMENTO_POSTGRES=postgres://commento:password@db:5432/commento
ENV COMMENTO_FORBID_NEW_OWNERS=false

# Expose the required port
EXPOSE 8080

# Command to start Commento (Replace with your actual binary if needed)
CMD ["echo", "Commento would start here"]
