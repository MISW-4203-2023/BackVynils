FROM node:12-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install --quiet

ENTRYPOINT [ "sh", "./docker/entrypoint.sh" ]
