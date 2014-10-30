module.exports = function() {
    Function.add('property', function (name) {
        return function (obj) {
            return obj[String(name)] !== undefined;
        };
    });
};
