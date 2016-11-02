'use strict';

var express = require('express');
var router = require('./api');

var app = express();

// route - entire public folder is at root URL
app.use('/', express.static('public'));

app.use('/api', router);

app.listen(3000, function() {
	console.log("Barron's server is running on port 3000!");
});