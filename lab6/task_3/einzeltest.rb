# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
require_relative 'finder'
# comment
class TestProcessing < Minitest::Test
  def test_proverka1
    checkable1, checkable2 = Sucher.minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }
    assert_in_delta(checkable1, -0.9971, 1e-2)
    assert_in_delta(checkable2, -0.4794, 1e-2)
  end

  def test_proverka0
    checkable1, checkable2 = Sucher.minmax(0, 2) { |x| (x - 1) / (x + 2) }
    assert_in_delta(checkable1, -1, 1e-2)
    assert_in_delta(checkable2, 0.25, 1e-2)
  end
end
