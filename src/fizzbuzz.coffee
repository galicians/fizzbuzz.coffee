class Fizzbuzz

  isDivisibleByThree: (number) ->
    # number % 3 == 0
    @isDivisibleBy number, 3

  isDivisibleByFive: (number) ->
    # number % 5 == 0
    @isDivisibleBy number, 5

  isDivisibleBy: (number, divi) ->
    number % divi == 0

  play: (number) ->
    return "FizzBuzz" if @isDivisibleBy number, 15 
    return "Fizz" if @isDivisibleBy number, 3
    return "Buzz" if @isDivisibleBy number, 5
    return number

module.exports = Fizzbuzz