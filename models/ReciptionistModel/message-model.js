var db = require('./db');

module.exports = {
	getAll: function(callback){
		var sql = "select * from sms where receive='receptionist' and sender='HR'";
		db.getResult(sql, [], function(results){
			callback(results);
		});
	},
	
	insert: function(user, callback){
		var sql = "insert into sms values (?,?,?,?)";
		db.execute(sql,['','Receptionist', user.sms,'HR'], function(status){
			callback(status)
		});
	},
	
}