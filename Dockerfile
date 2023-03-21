FROM alpine:3.14

WORKDIR /app

COPY . /app

EXPOSE 5000

CMD python3 app.py