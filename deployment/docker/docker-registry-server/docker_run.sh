export CONTAINER_NAME=docker-registry-local-server
export DATA_DIR=/local

sudo mkdir -p ${DATA_DIR}/var/lib/registry

sudo docker stop $CONTAINER_NAME
sudo docker rm -f $CONTAINER_NAME

sudo iptables -I INPUT -p tcp --dport 5000 -j ACCEPT

sudo docker run -it -d \
    --name $CONTAINER_NAME \
    --restart=unless-stopped \
    --privileged=true \
    -p 5000:5000 \
    -e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/var/lib/registry \
    -v ${DATA_DIR}/var/lib/registry:/var/lib/registry:rw \
    registry:latest