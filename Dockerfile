FROM node:13-alpine

# set default dir so that next commands executes in /app dir
WORKDIR /app

COPY ./app ./

# will execute npm install in /home/app because of WORKDIR
RUN yarn install

# no need for /home/app/server.js because of WORKDIR
CMD ["yarn", "start"]

