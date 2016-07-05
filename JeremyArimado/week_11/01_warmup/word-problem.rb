require 'pry'

class WordProblem

    attr_reader :string

    def initialize(string)
        @string = string
    end

    def calculate
        @match = @string.match /(\d+)([A-Za-z.\s_-]+)(\d+)([A-Za-z.\s_-]+)?(\d+)?/
        binding.pry
    end

    def answer
        calculate(@string)
    end
end


# require "pry"
# class Phone
#
#   attr_reader :number
#
#   def initialize(number)
#     @number = clean(number)
#   end
#
#   def clean(number)
#     number = number.gsub(/[^0-9]/, "")
#     validate(number)
#   end
#
#
#   def validate(number)
#
#     if number.length == 10
#       number
#     elsif number.length == 11 && number[0] == '1'
#       number[1..10]
#     else
#       "0" * 10
#     end
#   end
#
#   def area_code
#     @number[0..2]
#   end
#
#   def to_s
#     "(#{area_code}) #{@number[3..5]}-#{@number[6..9]}"
#   end
#
# end
