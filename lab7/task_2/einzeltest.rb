# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'
# comment
class TestProcessing < Minitest::Test
  def test_proverka1
    assert(work_classes('Hallo').is_a?(Word))
  end

  def test_proverka0
    assert(work_classes('Hallo'), "Super Class\nHallo\n5\n\nSub Class\nHallo\n5\n2")
  end
end
