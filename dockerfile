FROM node:18-alpine
RUN apk --no-cache add curl
RUN npm install -g firebase-tools
WORKDIR /app
COPY . /app
CMD [ "bash" ]