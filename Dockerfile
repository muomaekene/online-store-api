# syntax=docker/dockerfile:1

FROM node:20-alpine

WORKDIR /app

COPY package.json .

COPY yarn.lock .

RUN yarn install 

COPY . .

EXPOSE $PORT

CMD yarn run start:prod