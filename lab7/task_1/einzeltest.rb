# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
# comment
class TestProcessing < Minitest::Test
  def test_proverka1
    File.open('cr_testing.txt', 'w') do |f|
      f.write('проверка выведет ли аслово или же выведет абольшоеслово которое длиннее')
    end
    assert('alongerword', sorting_length(finding_word('cr_testing.txt')))
  end

  def test_proverka0
    assert('атеста', sorting_length(finding_word('ffte.txt')))
  end
end
