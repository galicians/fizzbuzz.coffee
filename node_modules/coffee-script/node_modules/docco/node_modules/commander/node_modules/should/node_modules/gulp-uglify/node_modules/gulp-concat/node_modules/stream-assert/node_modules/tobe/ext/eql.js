var is = require('is');

module.exports = function() {
    Function.add('eql', function(val) {
        return function (obj) {
            return is.equal(obj, val);
        };
    });
};
