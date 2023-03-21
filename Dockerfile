FROM alpine:3.14

WORKDIR /app

COPY . /app

EXPOSE 5000

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install flask
CMD python3 app.py