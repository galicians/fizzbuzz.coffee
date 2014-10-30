class Fizzbuzz

  isDivisibleByThree: (number) ->
    this.isDivisibleBy number, 3

  isDivisibleByFive: (number) ->
    this.isDivisibleBy number, 5

  isDivisibleBy: (number, divisor) ->
    number % divisor == 0

  fizzbuzz: (number) ->
    return "FizzBuzz" if this.isDivisibleBy number, 15 
    return "Fizz" if this.isDivisibleBy number, 3
    return "Buzz" if this.isDivisibleBy number, 5
    return number

module.exports = Fizzbuzz