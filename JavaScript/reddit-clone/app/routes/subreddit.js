'use strict';

const Promise = require("bluebird");
const MongoDb = Promise.promisifyAll(require('mongodb'));
const MongoClient = MongoDb.MongoClient;
const SubredditModel = require('./../models/subreddit').SubredditModel;
const PostModel = require('./../models/post').PostModel;
const CommentModel = require('./../models/comment').CommentModel;
const config = require('./../../config/database');

let db;
MongoClient.connectAsync(config.url)
	.then(database => db = database);

module.exports = server =>
{
	server.get('/r/:subreddit',(req, res) =>
	{
		const subredditId = req.params.subreddit;
		const model = new PostModel(db);
		
		model.getPosts({'subreddit': subredditId},-1,0,25)
			.then(posts => res.json(posts));
	});
	
	server.get('/r/:subreddit/new',(req, res) =>
	{
		const subredditId = req.params.subreddit;
		const model = new PostModel(db);
		
		model.getPosts({'subredditId': subredditId},-1,0,25)
			.then(posts => res.json(posts));
	});
	
	server.get('/r/:subreddit/:comments',(req, res) =>
	{
		const subredditId = req.params.subreddit;
		const commentId = req.params.comment;
		const model = new PostModel(db);
		
		model.getPosts({'subredditId': subredditId},-1,0,25)
			.then(posts => res.json(posts));
	});
};
