class Person
  attr_reader :first_name, :last_name, :phone_number
  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @phone_number = PhoneNumber.new(data[:phone_number])
  end

  def number
    phone_number.to_s
  end

  def score
    phone_number.sum
  end

  def name
    "#{first_name} #{last_name}"
  end

  def to_s
    "%s, %s: %s" % [last_name, first_name, phone_number]
  end

end
