# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  def initialize(email)
    @email = email
  end

  def parse

    first_parse = @email.split(" ")
    first_parse.collect do |word|
      #  binding.pry
      if word.end_with?(",")
        word.chomp(",")
      else
        word
      end
    end.uniq





  end





end # --> end EmailParser
