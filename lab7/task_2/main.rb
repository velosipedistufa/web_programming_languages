# frozen_string_literal: true

# doc
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
  end

  def len_output
    puts val_length
  end
end

# doc
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
    super
    puts val_length
    puts vowel_counter
  end
end

def work_classes(wort)
  sup_elem = Word.new(wort)
  sub_elem = SubWord.new(wort)
  puts 'Super Class'
  sup_elem.field_output
  sup_elem.len_output
  puts 'Sub Class'
  sub_elem.field_output
  sub_elem
end

# elem = Word.new('Hi')
# elem.value = 'Hello'
# puts elem.value
# elem.val_length
# subElem = SubWord.new('Hallo')
# puts subElem.value
# puts subElem.val_length
# puts subElem.vowel_counter
