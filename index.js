var fs = require('fs')
  , gm = require('gm')
  , path = require('path');
  

var length = gm(path.join(__dirname, 'dancing_banana.gif')).length;
console.log(length);
gm(path.join(__dirname, 'dancing_banana.gif'))
	.identify(function (err, data) {
  		if (!err) console.log(data);
	}).resize(96, 64, "!")
	.write(path.join(__dirname, 'dancing_banana_resized.gif'), function (err) {
		if (!err) console.log('done');
	});