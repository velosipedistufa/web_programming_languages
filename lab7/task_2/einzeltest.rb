# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
# comment
class TestProcessing < Minitest::Test
  def test_proverka1
    assert(work_classes('Hallo').is_a?(Word))
  end

  def test_proverka0
    assert(work_classes('Hallo'), "Super Class\nHallo\n5\nSub Class\nHallo\n5\n2\n")
  end
  
  def test_proverka2
    teste = Word.new("testing")
    assert(teste.value, "testing\n")
    assert(teste.value_length, 7)
  end

  def test_proverka3
    teste = SubWord.new("testing")
    assert(teste.value, "testing\n")
    assert(teste.val_length, 7)
    assert(teste.vowel_counter, 2)
  end
  def test_proverka4
    def_str = "testing"
    sup_test = Word.new(def_str)
    sub_test = SubWord.new(def_str)
    assert(sup_test.value, sub_test.value)
    assert(sup_test.value_length, sub_test.val_length)
  end
end

# add tests for method
