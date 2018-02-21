Build the image

docker build -t docker-demo:1 .
Run a Container

docker run -d -p 80:3000 docker-demo:1
