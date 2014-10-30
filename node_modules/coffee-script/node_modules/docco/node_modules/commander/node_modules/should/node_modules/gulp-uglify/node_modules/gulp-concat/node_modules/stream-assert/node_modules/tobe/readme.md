# tobe [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][depstat-image]][depstat-url]

Deferred assertion library with should.js syntax. Sometimes it is handy to pass assertion function as callback, for example — in [stream-assert](https://github.com/floatdrop/stream-assert).

## Usage

```js
var to = require('tobe');

var assert = to.be.instanceOf(Number);

assert(10);			// returns true
assert('string');	// Throws Error
```

## License

MIT (c) 2014 Vsevolod Strukchinsky

[npm-url]: https://npmjs.org/package/tobe
[npm-image]: http://img.shields.io/npm/v/tobe.svg?style=flat

[travis-url]: http://travis-ci.org/floatdrop/tobe
[travis-image]: http://img.shields.io/travis/floatdrop/tobe.svg?branch=master&style=flat

[depstat-url]: https://david-dm.org/floatdrop/tobe
[depstat-image]: http://img.shields.io/david/floatdrop/tobe.svg?style=flat
