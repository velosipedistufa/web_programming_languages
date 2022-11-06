# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
# commets
class TestProcessing < Minitest::Test
  def test_proverka1
    checkable = Processor.sin(1e-3)
    assert_in_delta(checkable, 0.145312, 1e-1)
    num_iter = Processor.counter
    assert(num_iter == 7)
  end

  def test_proverka0
    checkable = Processor.sin(1e-4)
    assert_in_delta(checkable, 0.140874, 1e-1)
    num_iter = Processor.counter
    assert(num_iter == 8)
  end
end
