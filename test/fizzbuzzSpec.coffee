chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz'

describe 'Fizzbuzz', ->
  before ->
    @fizzbuzz = new Fizzbuzz()

  it 'should know that 3 is divisible by 3', ->
    expect(@fizzbuzz.isDivisibleByThree(3)).to.be.true

  it 'should know that 5 is divisible by 5', ->
    expect(@fizzbuzz.isDivisibleByFive(5)).to.be.true

  it 'should know that 15 is divisible by 3 and 5', ->
    expect(@fizzbuzz.isDivisibleByThree(15)).to.be.true
    expect(@fizzbuzz.isDivisibleByFive(15)).to.be.true


  it 'should return "Fizz" on 3', ->
    expect(@fizzbuzz.play(3)).to.equal "Fizz"

  it 'should return "Buzz" on 5', ->
    expect(@fizzbuzz.play(5)).to.equal "Buzz"

  it 'should return "FizzBuzz" on 15', ->
    expect(@fizzbuzz.play(15)).to.equal "FizzBuzz"

  it 'should return the number itself in any other case', ->
    expect(@fizzbuzz.play(7)).to.equal 7
