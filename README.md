# udhcpd-docker
Real simple Docker for running a udhcpd server

# Usage
docker run -d --net=host -p 67:67 -p 67:67/udp -p 68:68 -p 68:68/udp --name=dhcpd -v /path/to/docker/dhcpd:/data jedimonkey/udhcpd

It will create a udhcpd.conf first time in your mapped volume if one doesn't already exist.

# Bugs
Using both host networking and ports currently - seems to not complete the DHCP process without host networking.  Will try to fix it later.


