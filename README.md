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
docker run -d \
    --restart always \
    --privileged \
    -v /usr/local/jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v `which docker`:/bin/docker \
    # and you may need to map for the timezone
    -v /etc/timezone:/etc/timezone:ro \
    -v /etc/localtime:/etc/localtime:ro \
    # usb
    -v /dev/bus/usb:/dev/bus/usb \
    # port
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
docker run -d \
    --privileged \
    --restart=always \
    -v /dev/bus/usb:/dev/bus/usb \
    -v `which docker`:/bin/docker \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /run/udev:/run/udev:ro \
    --net=host \
    --name ud4d_detector \
    williamfzc/ud4d
```

### FileBrowser

#### Browser

```bash
docker run -d \
    --restart=always \
    -v /usr/local/filebrowser_home/srv:/srv \
    -v /usr/local/filebrowser_home/filebrowser.db:/database.db \
    -v /usr/local/filebrowser_home/.filebrowser.json:/.filebrowser.json \
    -p 49003:80 \
    --name filebrowser \
    filebrowser/filebrowser
```

#### Static File Server

```bash
docker run -d \
    --restart=always \
    -v /usr/local/filebrowser_home/srv:/usr/share/nginx/files \
    -p 49004:80 \
    --name fileserver \
    williamfzc/min_file_server
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

### Sonarqube

很可能遇到权限问题。

```bash
docker run -d \
    --restart=always \
    -p 49005:9000 \
    -v /usr/local/sonarqube_home/conf:/opt/sonarqube/conf \
    -v /usr/local/sonarqube_home/data:/opt/sonarqube/data \
    -v /usr/local/sonarqube_home/logs:/opt/sonarqube/logs \
    -v /usr/local/sonarqube_home/extensions:/opt/sonarqube/extensions \
    --name sonarqube \
    sonarqube:lts
```

### we4m

```bash
docker run -it \
    --privileged \
    -v `which docker`:/bin/docker \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --name we4m \
    williamfzc/we4m
```
