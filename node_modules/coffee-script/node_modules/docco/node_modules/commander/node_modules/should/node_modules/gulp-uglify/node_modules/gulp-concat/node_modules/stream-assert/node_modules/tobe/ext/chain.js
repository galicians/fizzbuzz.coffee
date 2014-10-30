module.exports = function() {
    function addLink(name) {
        Object.defineProperty(Function.prototype, name, {
            get: function() {
                return this;
            },
            enumerable: true
        });
    }

    ['an', 'of', 'a', 'and', 'be', 'have', 'with', 'is', 'which', 'the'].forEach(addLink);
};
