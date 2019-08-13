# Ubuntu Desktop Dockerfile
Docker container for ubuntu 18.04 including desktop and vncserver.

# How to Run
```
docker run -p 5901:5901 sloppybook/docker-ubuntu-desktop
```

and then connect to:
`vnc://<host>:5901` via VNC client.

The VNC password is `password`.
