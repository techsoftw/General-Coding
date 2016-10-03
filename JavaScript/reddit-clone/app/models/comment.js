'use strict';

let db;

class CommentModel
{
	constructor(database)
	{
		db = database;
	}
	
	getComments(filter, sort, skip, limit)
	{
		return db.collection('comments')
			.find(filter)
			.sort({'createdAt': sort})
			.skip(skip)
			.limit(limit)
			.toArray();
	}
}

module.exports =
{
	CommentModel: CommentModel
};

