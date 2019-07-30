var db = require('./db');

module.exports = {

	/*validate: function(user, callback){
		var sql = "select * from user where username=? and password=?";
		db.getResult(sql, [user.username, user.password], function(results){			
			if(results.length > 0){
				callback(true);
			}else{
				callback(false);
			}
		});
	},*/

	getById: function(id, callback){
		var sql = "select * from hotels where id=?";
		db.getResult(sql, [id], function(result){
			callback(result);
		});
	},

	getAll: function(callback){
		var sql = "select * from hotels";
		db.getResult(sql, [], function(results){
			callback(results);
		});
	},

	update: function(user, callback){
		var sql = "update hotels set hotelName=?,hotelAddress=?,suite=?,family=?,deluxe=?,classic=?,superior=?,luxury=? where id=?";
		db.execute(sql, [user.name, user.location,user.suite,user.family,user.deluxe,user.classic,user.superior,user.luxury,user.id], function(status){
			callback(status);
		});
	},

	delete: function(id, callback){
		var sql = "delete from hotels where id=?";
		db.execute(sql, [4], function(status){
			callback(status)
		});
	},

	updatestatus: function(id, callback){
		var sql = "update hotels set status='inactive' where id=?";
		db.execute(sql ,[id] , function(status){
			callback(status);
		});
	},
	updatestatus2: function(id, callback){
		var sql = "update hotels set status='active' where id=?";
		db.execute(sql ,[id] , function(status){
			callback(status);
		});
	}
}