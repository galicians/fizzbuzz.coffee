module.exports = function() {
    Function.add('instanceOf', function(constructor) {
        return function (obj) {
            return Object(obj) instanceof constructor;
        };
    });
};
