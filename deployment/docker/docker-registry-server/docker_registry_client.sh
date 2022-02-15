export DOCKER_REGISTRY=DOCKERREGISTRYSERVER

# Pull (or build) some image from the hub
sudo docker pull ubuntu:latest

# Tag the image so that it points to your registry
sudo docker image tag ubuntu $DOCKER_REGISTRY:5000/ubuntu-img

# enable Docker to download from local registry
./enable_insecure_registry.sh

# Push it
sudo docker push $DOCKER_REGISTRY:5000/ubuntu-img

# Pull it back
sudo docker pull $DOCKER_REGISTRY:5000/ubuntu-img

# Run the image
sudo docker run --rm $DOCKER_REGISTRY:5000/ubuntu-img uname -a
