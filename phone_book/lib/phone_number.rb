class PhoneNumber
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def digits
    input.gsub(/[-\.]/, '')
  end

  def area_code
    digits[0..2]
  end

  def exchange
    digits[3..5]
  end

  def subscriber
    digits[-4..-1]
  end

  def to_s
    "(%s) %s-%s" % [area_code, exchange, subscriber]
  end

  def sum
    digits.chars.reduce(0) do |sum, digit|
      sum + digit.to_i
    end
  end
end
