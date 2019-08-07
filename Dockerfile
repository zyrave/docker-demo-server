# base image
FROM node:10.16.0-alpine

# create app directory and use it as the working directory
RUN mkdir -p /app/docker-demo-server
WORKDIR /app/docker-demo-server

# install and cache app dependencies
COPY package.json /app/docker-demo-server
COPY yarn.lock /app/docker-demo-server
RUN yarn

# copy all files to the working directory
COPY . /app/docker-demo-server

# start app
CMD ["yarn", "start"]
