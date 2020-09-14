FROM golang:latest

ARG PG_HOST
ARG PG_PORT
ARG PG_USER
ARG PG_PASSWORD
ARG PG_DATABASE
ARG GODADDY_APIKEY
ARG GODADDY_APISECRET
ARG GODADDY_DOMAIN

ARG PG_HOST=${PG_HOST}
ARG PG_PORT=${PG_PORT}
ARG PG_USER=${PG_USER}
ARG PG_PASSWORD=${PG_PASSWORD}
ARG PG_DATABASE=${PG_DATABASE}
ARG GODADDY_APIKEY=${GODADDY_APIKEY}
ARG GODADDY_APISECRET=${GODADDY_APISECRET}
ARG GODADDY_DOMAIN=${GODADDY_DOMAIN}


RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]