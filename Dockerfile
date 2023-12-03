FROM node:20.9.0
WORKDIR /app
COPY . .
RUN yarn
RUN yarn test
RUN yarn build
CMD yarn start
