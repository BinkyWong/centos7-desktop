# XFCE based on Centos 7 with Firefox, Chrome and x2go client

This is a Docker XFCE desktop based on Centos 7. It's accessible via the x2go client and an ideal base for virtual desktops.

Example start up:

  docker run  --cap-add SYS_ADMIN -d -p 222:22 docker pull binkybong/centos7-desktop

and connect you x2go client on port 222 of your docker instance.


