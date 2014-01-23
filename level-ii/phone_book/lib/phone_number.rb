class PhoneNumber
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def digits
    input.gsub(/\D/, '')
  end

  def area_code
    digits[0, 3]
  end

  def exchange
    digits[3, 3]
  end

  def subscriber
    digits[6, 4]
  end

  def to_s
    "(#{area_code}) #{exchange}-#{subscriber}"
  end

  def sum
    digits.chars.map { |char| char.to_i }.reduce(0, :+)
  end
end
