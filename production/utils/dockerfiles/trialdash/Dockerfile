FROM node:10.15

WORKDIR /usr/src/app

RUN pwd

COPY ./src/trialdash /usr/src/app

RUN yarn install

RUN yarn build

EXPOSE 3131

CMD yarn start
