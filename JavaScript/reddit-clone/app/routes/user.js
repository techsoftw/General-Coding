'use strict';

const Promise = require("bluebird");
const MongoDb = Promise.promisifyAll(require('mongodb'));
const MongoClient = MongoDb.MongoClient;
const SubredditModel = require('./../models/subreddit').SubredditModel;
const PostModel = require('./../models/post').PostModel;
const CommentModel = require('./../models/comment').CommentModel;
const UserModel = require('./../models/user').UserModel;
const config = require('./../../config/database');

let db;
MongoClient.connectAsync(config.url)
	.then(database => db = database);

module.exports = server =>
{
	server.get('/user/:user',(req, res) =>
	{
		const userId = req.params.user;
		const model = new UserModel(db);
		
		if (userId === undefined)
			res.json(null);
		
		model.getUser(userId)
			.then(user => res.json(user));
	});
	
	server.get('/user/:user/comments',(req, res) =>
	{
		const userId = req.params.user;
		const commentModel = new CommentModel(db);
		const userModel = new UserModel(db);
		
		if (userId === undefined)
			res.json(null);
		
		userModel.getUser(userId)
			.then(user =>
			{
				commentModel.getComments({'author': userId},-1,0,user.preferences.postsPerPage)
					.then(comments => res.json(comments));
			});
	});
};
