# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # binding.pry
    @emails = @emails.split(" ")
    @emails.collect do |email|
      email[-1] == "," ? email[0..-2] : email
    end.uniq

    # @emails = @emails.uniq

    # @emails.collect do |email|
    #   email.split(",")
    # end
  end

end
