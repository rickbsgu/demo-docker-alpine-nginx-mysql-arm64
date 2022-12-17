FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN apk --nocache --virtual build-dependencies add python2 make g++
RUN yarn install --production
CMD ["node", "src/index.js"]
