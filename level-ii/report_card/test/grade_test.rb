gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/grade'

class GradeTest < Minitest::Test
  def test_student_name
    grade = Grade.new(student_name: "Alice Smith")
    assert_equal "Alice Smith", grade.student_name
  end

  def test_subject
    skip
    grade = Grade.new(subject: "Programming in Ruby")
    assert_equal "Programming in Ruby", grade.subject
  end

  def test_score
    skip
    grade = Grade.new(score: "98")
    assert_equal 98, grade.score
  end

  def test_a
    skip
    (94..100).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("A", grade)
      assert_grade_point(4.0, grade)
    end
  end

  def test_a_minus
    skip
    (90..93).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("A-", grade)
      assert_grade_point(3.7, grade)
    end
  end

  def test_b_plus
    skip
    (87..89).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("B+", grade)
      assert_grade_point(3.3, grade)
    end
  end

  def test_b
    skip
    (83..86).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("B", grade)
      assert_grade_point(3.0, grade)
    end
  end

  def test_b_minus
    skip
    (80..82).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("B-", grade)
      assert_grade_point(2.7, grade)
    end
  end

  def test_c_plus
    skip
    (77..79).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("C+", grade)
      assert_grade_point(2.3, grade)
    end
  end

  def test_c
    skip
    (73..76).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("C", grade)
      assert_grade_point(2.0, grade)
    end
  end

  def test_c_minus
    skip
    (70..72).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("C-", grade)
      assert_grade_point(1.7, grade)
    end
  end

  def test_d_plus
    skip
    (67..69).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("D+", grade)
      assert_grade_point(1.3, grade)
    end
  end

  def test_d
    skip
    (63..66).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("D", grade)
      assert_grade_point(1.0, grade)
    end
  end

  def test_d_minus
    skip
    (60..62).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("D-", grade)
      assert_grade_point(0.7, grade)
    end
  end

  def test_f
    skip
    (0..59).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("F", grade)
      assert_grade_point(0.0, grade)
    end
  end

  private

  def assert_grade(letter, grade)
    assert_equal letter, grade.letter, "#{grade.score}% should be #{letter}"
  end

  def assert_grade_point(grade_point, grade)
    assert_equal grade_point, grade.point, "#{grade.score}% should be #{grade_point}"
  end

end

