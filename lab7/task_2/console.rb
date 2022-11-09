# frozen_string_literal: true

require_relative 'main1'

puts 'Enter word'

word_name = gets.to_s.strip
puts "\n"
puts work_classes(word_name)
