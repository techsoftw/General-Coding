'use strict';

let db;

class UserModel
{
	constructor(database)
	{
		db = database;
	}
	
	getUsers(filter, sort, skip, limit)
	{
		return db.collection('users')
			.find(filter)
			.sort({'createdAt': sort})
			.skip(skip)
			.limit(limit)
			.toArray();
	}
	
	getUser(userId)
	{
		return db.collection('users')
			.findOne({'_id': userId});
	}
}

module.exports =
{
	UserModel: UserModel
};
