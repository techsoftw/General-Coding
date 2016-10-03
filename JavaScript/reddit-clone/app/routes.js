'use strict';

const Promise = require("bluebird");
const MongoDb = Promise.promisifyAll(require('mongodb'));
const MongoClient = MongoDb.MongoClient;
const PostModel = require('./models/post').PostModel;
const config = require('./../config/database');

module.exports = server =>
{
	server.get('/',(req, res) =>
	{
		MongoClient.connectAsync(config.url)
			.then(db =>
			{
				const model = new PostModel(db);
				
				model.getPosts({},-1,0,25)
					.then(posts => res.json(posts));
			});
	});
	
	require('./routes/subreddit')(server);
	require('./routes/user')(server);
	
	server.use((req, res) =>
	{
		res.status(404).send('404: Page not Found');
	});
	
	server.use((error, req, res, next) =>
	{
		res.status(500).send('500: Internal Server Error');
	});
};
