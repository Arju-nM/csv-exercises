class Person
  attr_reader :last_name, :first_name, :phone_number
  def initialize(attributes)
    @last_name = attributes[:last_name]
    @first_name = attributes[:first_name]
    @phone_number = attributes[:phone_number]
  end
end
