to run tests, istall those packes on you system
 #  curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash
 # yum install -y nodejs
 # yum install npm 
 # npm install -g mocha
 # cd your-project
 # npm install 
 # npm test
    
pm2 require 17.0 or higher of docker

Build the image

docker build -t docker-demo:1 .
Run a Container

docker run -d -p 80:3000 docker-demo:1
