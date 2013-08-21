

var shine = require('./vm/moonshine.js'),
	fs = require('fs');

module.exports.distil = require('./distil/distil.moonshine.js');
window = global;




shine.utils.get = function (url, success, error) {
	fs.readFile(url, function (err, data) {
		if (err) return error(err.message);
		success(data);
	});
};




module.exports = shine;
