require 'minitest/autorun'
require_relative 'main'
require_relative 'finder'

class TestProcessing < Minitest::Test
	def test1
		checkable1, checkable2 = Sucher.minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }
		assert_in_delta(checkable1, -0.9971, 10e-3)
		assert_in_delta(checkable2, -0.4794, 10e-3)
	end

	def test0
		checkable1, checkable2 = Sucher.minmax(0, 2) { |x| (x - 1) / (x + 2) }
		assert_in_delta(checkable1, -1, 10e-3)
		assert_in_delta(checkable2, -0.25, 10e-3)
	end
end