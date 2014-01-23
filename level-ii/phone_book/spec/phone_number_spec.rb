require 'spec_helper'

describe PhoneNumber do
  it 'knows its original input' do
    phone_number = PhoneNumber.new("123-456-0123")
    expect(phone_number.input).to eq("123-456-0123")
  end

  it "knows its number's digits" do
    ["234-567-1234", "234.567.1234"].each do |number|
      phone_number = PhoneNumber.new(number)
      expect(phone_number.digits).to eq("2345671234")
    end
  end

  it "parses out the area code" do
    phone_number = PhoneNumber.new("345-678-3456")
    expect(phone_number.area_code).to eq("345")
  end

  it "parses out the exchange" do
    phone_number = PhoneNumber.new("456-789-4567")
    expect(phone_number.exchange).to eq("789")
  end

  it "parses out the subscriber" do
    phone_number = PhoneNumber.new("567-890-5678")
    expect(phone_number.subscriber).to eq("5678")
  end

  it "has a string representation" do
    phone_number = PhoneNumber.new("111-222-3333")
    expect(phone_number.to_s).to eq("(111) 222-3333")
  end

  it "knows the phone number's sum" do
    phone_number = PhoneNumber.new("111-222-3456")
    expect(phone_number.sum).to eq(27)
  end
end
