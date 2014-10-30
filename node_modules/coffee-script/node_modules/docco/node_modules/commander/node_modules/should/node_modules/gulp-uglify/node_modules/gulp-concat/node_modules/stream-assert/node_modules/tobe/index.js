function Assertion() {
    this._assertions = [];
}

Function.add = function (name, f, isGetter) {
    var prop = { enumerable: true };
    prop[isGetter ? 'get' : 'value'] = function() {
        var args = Array.prototype.slice.call(arguments);
        var asserter = function (obj) {
            var result = f.apply(this, args)(obj);
            if (!result) {
                throw new Error();
            }
        };
        return asserter;
    };

    Object.defineProperty(Function.prototype, name, prop);
};

var tobe = new Assertion();

tobe.use = function(f) {
    f(this, Function);
    return this;
};

tobe
  .use(require('./ext/chain'))
  .use(require('./ext/eql'))
  .use(require('./ext/type'))
  .use(require('./ext/property'));

module.exports = function () {};
