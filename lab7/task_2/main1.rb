# frozen_string_literal: true

# com
class Word
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def val_length
    puts value.length
  end

  def field_output
    puts value
    value
  end
end

# com
class SubWord < Word
  attr_accessor :val_length

  def initialize(value)
    super(value)
    @val_length = value.length
  end

  def vowel_counter
    value.chars.map { |x| x if x.match(/[aeiouAEIOU]/) }.join.size
  end

  def field_output
    super(value)
    puts val_length
    puts vowel_counter
  end
end

def work_classes(wort)
  sup_elem = Word.new(wort)
  sub_elem = SubWord.new(wort)
  puts 'Super Class'
  sup_elem.field_output
  puts 'Sub Class'
  sub_elem.field_output
end

# elem = Word.new('Hi')
# elem.value = 'Hello'
# puts elem.value
# elem.val_length
# subElem = SubWord.new('Hallo')
# puts subElem.value
# puts subElem.val_length
# puts subElem.vowel_counter
