# FOM https://hub.docker.com/r/appsvc/node/
FROM node:carbon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Copy app
COPY . /usr/src/app

COPY init_container.sh /bin/
RUN chmod 755 /bin/init_container.sh

# Expose for api
EXPOSE 3000

CMD ["/bin/init_container.sh"]
