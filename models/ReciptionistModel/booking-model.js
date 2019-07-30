var db = require('./db');

module.exports = {

	getById: function(id, callback){
		var sql = "select * from booking where id=?";
		db.getResult(sql, [id], function(result){
			callback(result);
		});
	},

	getAll: function(callback){
		var sql = "select * from booking group by id desc";
		db.getResult(sql, [], function(results){
			callback(results);
		});
	}
}