# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
# comments
class TestProcessing < Minitest::Test
  def test_proverka1
    checkable = processing(1e-3)
    assert(checkable == "0.14113062718531458\n7")
  end

  def test_proverka0
    checkable = processing(1e-4)
    assert(checkable == "0.14111965434119442\n8")
  end
end
