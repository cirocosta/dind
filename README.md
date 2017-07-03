<h1 align="center">dind 🐳  </h1>

<h5 align="center">Docker-in-Docker with SSH and Git</h5>

<br/>

`cirocosta/dind` adds a thin layer on top of `docker:dind` which allows one to SSH without passoword/private keys as an easy way of testing.

### Quickstart 

```sh
docker run \
  --privileged \
  --publish 2022:22 \
  --detach \
  --name machine1 \
  cirocosta/dind

ssh root@localhost -p 2022 docker version
Client:
 Version:      17.06.0-ce
 API version:  1.30
 Go version:   go1.8.3
 Git commit:   02c1d87
 Built:        Fri Jun 23 21:15:15 2017
 OS/Arch:      linux/amd64

Server:
 Version:      17.06.0-ce
 API version:  1.30 (minimum version 1.12)
 Go version:   go1.8.3
 Git commit:   02c1d87
 Built:        Fri Jun 23 21:51:55 2017
 OS/Arch:      linux/amd64
 Experimental: false
```

### Note

This isn't something to be used in production. It is totally unsafe.

