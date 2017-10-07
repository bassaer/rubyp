class FizzBuzz
  def self.run(num)
    unless num.kind_of?(Integer) && num > 0 then
      return 'Error'
    end

    if num % 15 == 0 then
      return 'FizzBuzz'
    elsif num % 3 == 0 then
      return 'Fizz'
    elsif num % 5 == 0 then
      return 'Buzz'
    else
      return num
    end
  end
end

