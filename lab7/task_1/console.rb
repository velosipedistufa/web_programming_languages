# frozen_string_literal: true

require_relative 'main'

puts 'Enter filename'

finame = gets.to_s.strip

puts sorting_length(finding_word(finame))
