# frozen_string_literal: true

def finding_word(filename)
  new_arr = []
  File.open(filename.to_s, 'r') do |file|
    stroka = file.read.split
    stroka.each do |word|
      new_arr << word.delete('^[А-Яа-я]') if word[0] == 'а'
    end
  end
  if new_arr.empty?
    puts "NO WORDS"
    abort
  else
    new_arr
  end
end

def sorting_length(anarr)
  anarr.sort_by.with_index { |strok, i| [strok.length, i] }
end
