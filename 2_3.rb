# frozen_string_literal: true

require 'test/unit'
require_relative './2_1.rb'

# Class for testing
class MyTest < Test::Unit::TestCase
  def setup
    @person = Person.new('LastName', 18)
    @sick = Sick.new('LastName', 18, 2020)
  end

  def test1
    assert(@person.class == @sick.class.superclass)
  end
end
