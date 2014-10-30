chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz'

describe 'Fizzbuzz', ->
  fizzbuzz = new Fizzbuzz()

  it 'should know that 3 is divisible by 3', ->
    expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

  it 'should know that 5 is divisible by 5', ->
    expect(fizzbuzz.isDivisibleByFive(5)).to.be.true

  it 'should know that 15 is divisible by 3 and 5', ->
    expect(fizzbuzz.isDivisibleByFive(15)).to.be.true


  it 'should return "Fizz" when a number is divisible by 3', ->
    expect(fizzbuzz.fizzbuzz(3)).to.equal "Fizz"

  it 'should return "Buzz" when a number is divisible by 5', ->
    expect(fizzbuzz.fizzbuzz(5)).to.equal "Buzz"

  it 'should return "FizzBuzz" when a number is divisible by 5 and 3', ->
    expect(fizzbuzz.fizzbuzz(15)).to.equal "FizzBuzz"

  it 'should return the number itself in any other case', ->
    expect(fizzbuzz.fizzbuzz(7)).to.equal 7
