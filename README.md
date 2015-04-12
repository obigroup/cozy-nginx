# Build:
```
docker build -t obigroup/cozy-nginx .
```
# Dependencies
[Cozy Apps](https://registry.hub.docker.com/u/obigroup/cozy-apps/)

# Run:
With fig :
```
nginx:
    image: obigroup/cozy-nginx
    domainname: cozy.dev
    links:
    - cozyapps
    volumes:
    - yourhostpathhere:/var/log/nginx
    ports:
    - "127.0.0.3:80:80"
    - "127.0.0.3:443:443"
```

#More about updates
```
https://forum.cozy.io/t/deployer-cozy-avec-docker-et-des-containers-autonomes/468
```