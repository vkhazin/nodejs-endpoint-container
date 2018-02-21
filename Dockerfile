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

# ------------------------
# SSH Server support
# ------------------------
RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-server \
    && echo "root:Docker!" | chpasswd

COPY sshd_config /etc/ssh/

COPY init_container.sh /bin/
RUN chmod 755 /bin/init_container.sh

# Expose for api
EXPOSE 2222 3000

CMD ["/bin/init_container.sh"]
