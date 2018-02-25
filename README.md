pm2 require 17.0 or higher of docker

Build the image

docker build -t docker-demo:1 .
Run a Container

docker run -d -p 80:3000 docker-demo:1
