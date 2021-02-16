FROM centos as build

# Dependency
RUN fallocate -l 10M /opt/1

# Dependency
RUN fallocate -l 10M /opt/2

# File we only need
RUN fallocate -l 5MB /opt/jar

FROM alpine

# Copy file from previous stage to specific directory
COPY --from=build /opt/jar /jarfile.jar