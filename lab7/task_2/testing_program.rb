# frozen_string_literal: true

require_relative 'main'
# comment
def somefunc
#    tstring = "testing".to_s.strip
    teste = Word.new("testing")
#   somestr = teste.field_output
   teste.field_output
    puts teste.value
#   puts (somestr.eql? "testing")
#  assert(teste.field_output(), puts "testing")
  end
somefunc
