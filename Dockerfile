# https://hub.docker.com/_/python
# https://pythonspeed.com/articles/alpine-docker-python/
# https://stackoverflow.com/questions/39123988/python3-nodejs-docker-images
FROM python:3

# https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/
RUN apt-get update || : \ 
    && apt-get install nodejs npm -y \
    && apt-get install jq 
# jq is used in entrypoint.sh to process JSON
# https://stedolan.github.io/jq/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
