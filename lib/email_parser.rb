class EmailParser

attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails = @emails.tr(",", "").split(" ")
    return @emails.uniq
  end

end
