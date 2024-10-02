FROM alpine AS main
ENTRYPOINT ["echo", "my mango is to blow up"]

FROM golang:alpine AS main-go
COPY main.go /app/main.go
ENTRYPOINT ["go", "run", "/app/main.go"]

FROM php:alpine AS main-php
COPY main.php /app/main.php
ENTRYPOINT ["php", "/app/main.php"]

FROM node:alpine AS main-node
COPY main.js /app/main.js
ENTRYPOINT ["node", "/app/main.js"]