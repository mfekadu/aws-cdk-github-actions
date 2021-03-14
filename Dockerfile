# https://hub.docker.com/_/python
# https://pythonspeed.com/articles/alpine-docker-python/
# https://stackoverflow.com/questions/39123988/python3-nodejs-docker-images
FROM node:6.4.0

RUN apt-get update || : \ 
    && apt-get install python -y \
    && apt-get install python3-pip -y \
    && ln -sf /usr/bin/python3 /usr/bin/python

# RUN apk --update --no-cache add nodejs nodejs-npm python3 py3-pip jq curl bash git docker && \
	ln -sf /usr/bin/python3 /usr/bin/python && pip install spacy

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
