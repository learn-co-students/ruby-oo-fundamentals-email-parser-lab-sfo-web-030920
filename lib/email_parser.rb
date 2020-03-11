# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'


class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
       new_arr = @emails.split(' ')
        new_arr.map! do |ele|
            ele.gsub(",", "")
        end
        new_arr.uniq
    end

end


parser1 = EmailAddressParser.new("emails").parse


