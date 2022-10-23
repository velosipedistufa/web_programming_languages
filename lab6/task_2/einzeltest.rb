require 'minitest/autorun'
require_relative 'main'

# tests calc method
class TestProcessing < Minitest::Test
	def test1
		checkable = processing(10e-4)
		assert_equal(checkable, 7)
	end

	def test0
		checkable = processing(10e-5)
		assert(checkable == 8)
	end
end