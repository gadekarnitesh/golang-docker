# Use a minimal base image for the final container (like alpine)
FROM alpine:latest

# Set the Current Working Directory inside the container
WORKDIR /root/

# Copy the pre-built Go binary from the Jenkins workspace to the container
COPY /var/lib/jenkins/workspace/golang/main .

# Expose port 8080 (or whatever port your Go app listens on)
EXPOSE 8080

# Run the Go app
CMD ["./main"]
