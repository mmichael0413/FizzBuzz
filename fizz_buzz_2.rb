class FizzBuzz2

  def run!
    100.times do |i|
      print_output(i + 1)
    end
  end

  def print_output(int)
    if fizz_buzz?(int)
      puts 'FizzBuzz'
    elsif fizz?(int)
      puts 'Fizz'
    elsif buzz?(int)
      puts 'Buzz'
    else
      puts int
    end
  end

  def fizz?(int)
    int % 3 == 0 || int.to_s.include?('3')
  end

  def buzz?(int)
    int % 5 == 0 || int.to_s.include?('5')
  end

  def fizz_buzz?(int)
    int % 15 == 0 || (int.to_s.include?('3') && int.to_s.include?('5'))
  end

end
