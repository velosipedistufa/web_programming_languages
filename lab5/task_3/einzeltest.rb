# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

def generate_code(number)
  charset = Array('A'..'Z') + Array('b'..'z')
  Array.new(number) { charset.sample }.join
end

# comm
class TestProcessing < Minitest::Test
  def test_proverka1
    checkable = processing('abc ade afg')
    assert(checkable, 'a:3\ng:1\nf:1\ne:1\nd:1\nc:1\nb:1\n')
  end

  def test_proverka0
    checkable = arr_bearbeiter(['a:3\ng:1\nf:1\ne:1\nd:1\nc:1\nb:1', 'u:2\no:2\nk:1\ng:1\nf:1\nd:1\nc:1\nb:1\na:1'])
    assert(checkable,
           'invalid input\nabc ade afg\na:3\ng:1\nf:1\ne:1\nd:1\nc:1\nb:1\n\nkudo' \
     ' fugo abc\nu:2\no:2\nk:1\ng:1\nf:1\nd:1\nc:1\nb:1\na:1')
  end

  def test_proverka2
    anarray = generate_code(20)
    anarray[rand(19)] = 'a'
    checkable = processing(anarray)
    assert(checkable, '/*"a:1\n"*/')
  end
end
