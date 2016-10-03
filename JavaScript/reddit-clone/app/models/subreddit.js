'use strict';

let db;

class SubredditModel
{
	constructor(database)
	{
		db = database;
	}
}

module.exports =
{
	SubredditModel: SubredditModel
};
