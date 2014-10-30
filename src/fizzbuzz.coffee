class Fizzbuzz

  isDivisibleByThree: (number) ->
    @isDivisibleBy number, 3

  isDivisibleByFive: (number) ->
    @isDivisibleBy number, 5

  isDivisibleBy: (number, divisor) ->
    number % divisor == 0

  fizzbuzz: (number) ->
    return "FizzBuzz" if @isDivisibleBy number, 15 
    return "Fizz" if @isDivisibleBy number, 3
    return "Buzz" if @isDivisibleBy number, 5
    return number

module.exports = Fizzbuzz