# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    list_emails = []
       @emails.split(' ').each do |email|
       email.strip!
       email.tr!(',', '')
       list_emails << email unless list_emails.include?(email)
    end
    return list_emails
  end
end

# class EmailAddressParser
  
#   def initialize(*emails)
#     @emails = emails
#   end
  
#   def parse
#     list_emails = []
#     if @emails.is_a?(Array)
#       return @emails.uniq.map { |email| email}
#     else
#       @emails.split(',').each do |email|
#       email.strip!
#       list_emails << email unless list_emails.include?(email)
#     end
#     end
#     list_emails
#   end
# end