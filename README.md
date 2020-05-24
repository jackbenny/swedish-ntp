# OpenNTPD with Swedish Netnod NTP-servers
This is a simple and small OpenNTPD container pre-configured with NTP-servers
from the Swedish Netnod. All servers have the same weight, so it should work
equally well wherever you live in Sweden.

![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/jackbenny/swedish-ntp?sort=date)
![Docker Pulls](https://img.shields.io/docker/pulls/jackbenny/swedish-ntp)
![Docker Stars](https://img.shields.io/docker/stars/jackbenny/swedish-ntp)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/jackbenny/swedish-ntp)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/jackbenny/swedish-ntp)

## Usage

### As a client
To simply use it as a client to synchronize your local computer clock, just
run it and add the capability to change the clock. For example:

    docker run -d --name ntp --cap-add SYS_TIME --restart=always swedish-ntp

### As a server
You need to publish UDP port 123 to be able to connect to the OpenNTPD daemon. 
For example:

    docker run -d --name ntp --cap-add SYS_TIME --publish 123:123/udp --restart=always swedish-ntp

# Additional information
For more information about Netnod NTP servers, see [Netnod's NTP
service](https://www.netnod.se/ntp/network-time-protocol-%28ntp%29-services-).
Please note that I am not in any way affiliated with Netnod.

For more information about OpenNTPD, see [OpenNTPD](http://www.openntpd.org/).
