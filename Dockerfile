FROM node:12-alpine

ARG NODE_ENV=production
ARG PORT=8000

ENV PORT=${PORT}
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

EXPOSE ${PORT}
CMD [ "node", "app.js" ]
