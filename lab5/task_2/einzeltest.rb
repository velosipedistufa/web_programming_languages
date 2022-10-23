require 'minitest/autorun'
require_relative 'main'

# tests calc method
class TestProcessing < Minitest::Test
	def test1
		checkable = processing([1, 2, 3, 3, 2, 2, 1, 4, 5, 3, 4, 5, 6])
		assert(checkable, [3456, 22, 145, 1233])
	end

	def test0
		checkable = processing([1, 2, 3, 6, 7, 3, 4, 5, 2, 3, 3, 4])
		assert(checkable, [345, 2334, 12367])
	end
end