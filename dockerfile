FROM node:18-alpine
RUN apk --no-cache add curl
RUN npm install -g firebase-tools
# Create a custom resolv.conf file
RUN echo "nameserver 8.8.8.8" > /custom-resolv.conf && \
    echo "nameserver 8.8.4.4" >> /custom-resolv.conf

# Set the custom resolv.conf file as the DNS resolver
ENV RESOLV_CONF=/custom-resolv.conf

WORKDIR /app
COPY . /app
CMD [ "sh" ]