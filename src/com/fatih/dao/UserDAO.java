	package com.fatih.dao;
	
	import org.bson.types.ObjectId;
	
	import com.fatih.conventer.UserConventer;
	import com.fatih.model.User;
	import com.mongodb.DBCollection;
	import com.mongodb.DBObject;
	import com.mongodb.MongoClient;
	
	public class UserDAO {
		
		private DBCollection dbCollection;
		
		public UserDAO(MongoClient mongoClient) {
			this.dbCollection=mongoClient.getDB("usersDB").getCollection("users");
		}
		
		
		public User createUser(User user){
			
			DBObject dbObject=UserConventer.toDBObject(user);
			this.dbCollection.insert(dbObject);
			ObjectId id=(ObjectId) dbObject.get("_id");
			user.setId(id.toString());
			return user;
		}
	
	}
