# frozen_string_literal: true

require_relative './1_1.rb'
require 'test/unit'

# Class which test our program
class MyTest < Test::Unit::TestCase
  def test1
    if File.file?('./F.txt')
      assert_equal(max_a, FuncTest.cal)
    else
      assert(false)
    end
  end
end

# Class with test functions
class FuncTest
  def self.cal
    words = File.open('./F.txt').read.split.select { |m| m.start_with?('a') }
    if words.empty?
      word = 'No words found'
    else
      len_max = words.max_by(&:length).length
      word = words.select { |m| m.length == len_max }.last
    end
    word
  end
end
