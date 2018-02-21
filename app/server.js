var restify = require('restify');
var server = restify.createServer();
var pkg = require('../package.json');

server.get('/', function(req, res, next) {
  res.contentType = 'json';
  res.send({message: 'hello world!'});
  next();
});

server.listen(3000, function() {
  console.log('restifyjs version %s running on port 3000', pkg.version);
  setInterval(function() {
    console.log('restifyjs version %s running on port 3000', pkg.version);
  }, 10000);
});
