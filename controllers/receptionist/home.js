var express = require('express');
var hotel = require.main.require('./models/ReciptionistModel/hotel-model');
var booking = require.main.require('./models/ReciptionistModel/booking-model');
var message = require.main.require('./models/ReciptionistModel/message-model');


var router = express.Router();


router.get('*', function(req, res, next){
	if(req.session.un != null){
		next();
	}else{
		res.redirect('/login');
	}
});

router.get('/', function(req, res){
	res.render('receptionist/index');
});

router.post('/', function(req, res){//sms part
	var data = {
		sms			: req.body.sms,
		reciever	: req.body.reciever
	};
	console.log(data.reciever);
	message.insert(data, function(status){
		if(status){
			res.render('receptionist/index');
		}
		else{
			res.send('invalid  sms...');
		}
	});
});

//View Hotel

router.get('/view_hotel', function(req, res){//view all receptionist
	hotel.getAll(function(results){
		res.render('receptionist/viewhotel', {List: results});
	});
});

//View Booking

router.get('/viewbooking', function(req, res){//view all receptionist
	booking.getAll(function(results){
		res.render('receptionist/viewbooking', {List: results});
	});
});

//Update Hotel

router.get('/editHotel/:id', function(req, res){ //update hotel
	hotel.getById(req.params.id, function(result){
		res.render('receptionist/editHotel', {hotel: result[0]});
	});
});
router.post('/editHotel/:id', function(req, res){
	var data = {
		id 			: req.params.id,
		name		: req.body.name,
		location	: req.body.location,
		suite		: req.body.suite,
		family		: req.body.family,
		deluxe		: req.body.deluxe,
		classic		: req.body.classic,
		superior	: req.body.superior,
		luxury		: req.body.luxury
	}
	hotel.update(data, function(status){
		if(status){
			res.redirect('/receptionist/view_hotel');
		}else{
			res.redirect('/receptionist/editHotel/'+req.params.id);
		}
	});

});

//Delete Hotel

router.get('/deleteHotel/:id', function(req, res){// delete hotel
	hotel.delete(req.params.id, function(status){
		if(status)
		{
			hotel.getAll(function(results){
			res.render('receptionist/viewhotel', {List: results});
			});
		}
		else
		{
			res.redirect('/receptionist/viewhotel',{List: results});
		}
	});
});

//View SMS

router.get('/viewsms', function(req, res){//view all sms
	message.getAll(function(results){
		res.render('receptionist/viewsms', {List: results});
	});
});

//status
router.get('/active/:id', function(req, res){
	receptionist.updatestatus(req.params.id,function(status){

		receptionist.getAll(function(results){
		res.render('receptionist/viewreceptionist', {List: results});
		});
		
	});
});
router.get('/inactive/:id', function(req, res){
	receptionist.updatestatus2(req.params.id,function(status){

		receptionist.getAll(function(results){
		res.render('receptionist/viewreceptionist', {List: results});
		});
		
	});
});

//hotel status
router.get('/hotel/active/:id', function(req, res){
	hotel.updatestatus(req.params.id,function(status){

		hotel.getAll(function(results){
		res.render('receptionist/viewhotel', {List: results});
		});
		
	});
});
router.get('/hotel/inactive/:id', function(req, res){
	hotel.updatestatus2(req.params.id,function(status){

		hotel.getAll(function(results){
		res.render('receptionist/viewhotel', {List: results});
		});
		
	});
});
module.exports = router;