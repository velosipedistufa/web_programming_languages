# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
# commentation for
class TestProcessing < Minitest::Test
  def test_proverka1
    checkable = processing(1)
    assert_in_delta(checkable, -1.34775597054392577, 1e-1)
  end

  def test_proverka0
    checkable = processing(0)
    assert_in_delta(checkable, 0.2958129155327455, 1e-1)
  end
end
