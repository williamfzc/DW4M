# DW4M

## StartUp Command

### Portainer

```bash
docker volume create portainer_data
```

```bash
docker run -d \
    -p 9000:9000 \
    --name portainer \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer
```

### Jenkins

```bash
sudo docker run -d --restart always --privileged \
    -v /usr/local/jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v `which docker`:/bin/docker \
    -v /dev/bus/usb:/dev/bus/usb \
    -p 49001:8080 \
    -p 49002:50000 \
    # if you need dns, replace ip address below
    # --dns 172.16.40.114 \
    # --dns 172.16.40.115 \
    --name instant_jenkins \
    williamfzc/instant_jenkins
```

### UD4D

- network `host`
- port `9410`

```bash
sudo docker run -d --privileged \
    -v /dev/bus/usb:/dev/bus/usb \
    -v `which docker`:/bin/docker \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /run/udev:/run/udev:ro \
    --net=host \
    --name ud4d_detector \
    williamfzc/ud4d
```

### FileBrowser

```bash
docker run \
    -v /usr/local/filebrowser_home/srv:/srv \
    -v /usr/local/filebrowser_home/filebrowser.db:/database.db \
    -v /usr/local/filebrowser_home/.filebrowser.json:/.filebrowser.json \
    -p 49003:80 \
    filebrowser/filebrowser
```

### Registry

```bash
docker run -d \
    -p 49004:5000 \
    --restart=always \
    --name registry \
    -v /mnt/registry:/var/lib/registry \
    registry:2
```
