require 'spec_helper'

describe Person do

  before do
    @bob = described_class.new first_name: "Bob", last_name: "Jones"
  end
  def alice
    described_class.new(first_name: "Alice")
  end

  it 'has a first name' do
    expect(alice.first_name).to eq("Alice")
  end

  let(:smith) { described_class.new(last_name: "Smith") }
  it 'has a last name' do
    expect(smith.last_name).to eq("Smith")
  end

  it 'has a name' do
    expect(@bob.name).to eq "Bob Jones"
  end

  describe 'phone number' do
    it 'is formatted' do
      person = described_class.new(phone_number: "123-555-2345")
      expect(person.number).to eq("(123) 555-2345")
    end

    it "has a sum" do
      person = described_class.new(phone_number: "012-555-7890")
      expect(person.score).to eq(42)
    end
  end

  it "can be represented as a string" do
    data = {
      first_name: "John",
      last_name: "Doe",
      phone_number: "123.555.0000"
    }
    person = described_class.new(data)
    expect(person.to_s).to eq("Doe, John: (123) 555-0000")
  end
end
