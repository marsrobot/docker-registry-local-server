# docker-registry-local-server

# Start the Docker Registry Server on the server machine
- Go to directory deployment/docker
- Run ./docker_run.sh

# Test the Docker Registry Server on the client machine
- Change DOCKERREGISTRYSERVER to your local registry server IP
- Run ./docker_registry_client.sh

# Reference
- https://docs.docker.com/registry/