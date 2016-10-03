'use strict';

let db;

class PostModel
{
	constructor(database)
	{
		db = database;
	}
	
	getPosts(filter, sort, skip, limit)
	{
		return db.collection('posts')
			.find(filter)
			.sort({'createdAt': sort})
			.skip(skip)
			.limit(limit)
			.toArray();
	}
}

module.exports =
{
	PostModel: PostModel
};
