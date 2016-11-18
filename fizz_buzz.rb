require_relative 'fizz_buzz_1'
require_relative 'fizz_buzz_2'

class FizzBuzz

  def initialize
    execute!
  end

  def execute!
    stage = welcome!
    while stage
      case stage
      when 1
        FizzBuzz1.new.run!
        break
      when 2
        FizzBuzz2.new.run!
        break
      else
        stage = welcome!
      end
    end
  end

  def welcome!
    unless ENV['RUBY_ENV'] == 'test'
      print 'Enter FizzBuzz Stage (1 or 2): '
      STDIN.gets.chomp.to_i
    end
  end

end

FizzBuzz.new