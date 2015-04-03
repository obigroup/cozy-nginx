# Build:
```
docker build -t obigroup/cozy-nginx .
```

# Run:
Need : [Cozy Apps](https://registry.hub.docker.com/u/obigroup/cozy-apps/)
With fig :
```
nginx:
    build: nginx
    links:
    - cozyapps
    ports:
    - "127.0.0.3:80:80"
    - "127.0.0.3:443:443"
    domainname: cozy.dev
```

#More about updates
```
https://forum.cozy.io/t/deployer-cozy-avec-docker-et-des-containers-autonomes/468
```