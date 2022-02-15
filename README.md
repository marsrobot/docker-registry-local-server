# docker-registry-local-server

# Purpose
- Set up an intranet docker registry server for Docker image sharing by Docker client or intranet k8s

# Start the Docker Registry Server on the server machine
- Go to directory deployment/docker/docker-registry-server
- Run ./docker_run.sh

# Test the Docker Registry Server on the docker client or k8s node machine
- Change DOCKERREGISTRYSERVER to your intranet registry server IP or DNS name
- Run ./docker_registry_client.sh

# Note
- https has not been turned on.

# Reference
- https://docs.docker.com/registry/