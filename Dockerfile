# https://hub.docker.com/_/python
# https://pythonspeed.com/articles/alpine-docker-python/
# https://stackoverflow.com/questions/39123988/python3-nodejs-docker-images
FROM python:3

RUN apt-get update || : \ 
    && apt-get install nodejs nodejs-npm -y \
    && apt-get install python3 python3-pip -y \
    && ln -sf /usr/bin/python3 /usr/bin/python

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
