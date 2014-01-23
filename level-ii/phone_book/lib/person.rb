require_relative 'phone_number'

class Person
  attr_reader :first_name, :last_name, :phone_number

  def initialize(attributes)
    @first_name   = attributes[:first_name]
    @last_name    = attributes[:last_name]
    @phone_number = PhoneNumber.new attributes[:phone_number]
  end

  def name
    "#{first_name} #{last_name}"
  end

  def number
    phone_number.to_s
  end

  def score
    phone_number.sum
  end

  def to_s
    "#{last_name}, #{first_name}: #{number}"
  end
end
