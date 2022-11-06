# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

# tests calc method
class TestProcessing < Minitest::Test
  def test_proverka1
    str = '1 2 3 3 2 2 1 4 5 3 4 5 6'
    checkable = processing(str.split.map(&:to_i))
    assert(checkable, [3456, 22, 145, 1233])
  end

  def test_proverka0
    str = '1 2 3 6 7 3 4 5 2 3 3 4'
    checkable = processing(str.split.map(&:to_i))
    assert(checkable, [345, 2334, 12_367])
  end
end
