# infsec-l2


dockerhub link: https://hub.docker.com/r/rozdestvenskiy/openvpn

run script inside container

run container like:
```bash
sudo docker run --rm -it -d --privileged -p 1194:1194 rozdestvenskiy/openvpn

then run script:
```bash
export CONTAINER_NAME="${sudo docker ps | tail -n 1 | cut -d ' ' -f 1}"
sudo docker exec -it $CONTAINER_NAME /root/script
