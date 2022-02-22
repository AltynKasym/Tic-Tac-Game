FROM node:16.13.0-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

RUN yarn build

EXPOSE 8080

CMD ["yarn", "start"]