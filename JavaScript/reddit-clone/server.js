'use strict';

const express = require('express');
const bodyParser = require('body-parser');
const nunjucks = require('nunjucks');
const morgan = require('morgan');
const assert = require('assert');

const server = express();
const port = process.env.PORT || 80;
const env = nunjucks.configure('./app/views',
{
	autoescape: true,
	express: server
});

server.use(express.static(__dirname + '/app/views'));
server.use(morgan('dev'));
server.use(bodyParser.urlencoded({'extended':'true'}));
server.use(bodyParser.json());
server.use(bodyParser.json({type: 'application/vnd.api+json'}));

require('./app/routes')(server);

server.listen(port,() =>
{
	console.log(`Server listening on port: ${port}`);
});
