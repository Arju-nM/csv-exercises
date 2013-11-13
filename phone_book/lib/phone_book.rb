require 'csv'
require_relative 'person'
require_relative 'phone_number'

class PhoneBook
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def entries
    @entries ||= build_people
  end

  def find_by_first_name(s)
    find_by(:first_name, s)
  end

  def find_by_last_name(s)
    find_by(:last_name, s)
  end

  def find_by_score(i)
    find_by(:score, i)
  end

  def n_lowest_scorers(n)
    entries.sort_by do |person|
      person.score
    end.first(n)
  end

  private

  def find_by(attribute, value)
    entries.select do |person|
      person.send(attribute) == value
    end
  end

  def build_people
    data.map do |row|
      Person.new(row)
    end
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end
end

