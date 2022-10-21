require 'minitest/autorun'
require_relative 'main'

# tests calc method
class TestProcessing < Minitest::Test
	def test1
		checkable = processing(1)
		assert_in_delta(checkable, -1.34775597054392577, 1e-17)
	end

	def test0
		checkable = processing(0)
		assert_in_delta(checkable, -11.4300523027613431, 1e-17)
	end
end