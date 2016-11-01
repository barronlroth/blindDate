'use strict';

var express = require('express');

var app = express();

// route - entire public folder is at root URL
app.use('/', express.static('public'));

// router - automatically change routes
var router = express.Router();

router.get('/todos', function(req, res) {
	res.json({todos:[]});
});

// TODO: Add POST route to create new entries

// TODO: Add PUT route to update existing entries

// TODO: Add DELETE route to delete entries

app.use('/api', router);

app.listen(3000, function() {
	console.log("Barron's server is running on port 3000!");
});