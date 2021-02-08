# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :list_of_email
    def initialize(emaillist)
        @list_of_email=emaillist
    end

    def parse
        #@list_of_email.split(/,?\s/).uniq
        if @list_of_email.include?(", ") && @list_of_email.include?(" ")
            list=list_of_email.gsub!(", ", " ")
            list=list.split(" ")
        elsif @list_of_email.include?(", ") 
            list=list_of_email.split(", ")
        elsif @list_of_email.include?(" ")
            list=list_of_email.split(" ")
        end
        list.uniq
    end
end