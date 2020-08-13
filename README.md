# Dockerfile of TestLink 1.9.19 on CentOS 8

# How To Launch
docker(or podman) run -d -p 80:80 --cap-add=SYS_NICE -v database-data:/var/lib/mysql -v /srv/docker_testlink/data/:/opt -t tminai/testlink:latest

# How To Setup
Do the following in the container:
```shell
# mysql_secure_installation
```

# How To Access TestLink
http://[YOUR_HOST_NAME]/testlink  
The TestLink initialization process will begin automatically.  
After setup is complete, don't forget to do the following in your container.  
```shell
rm -rf /var/www/html/testlink/install
```

https://hub.docker.com/r/tminai/testlink
