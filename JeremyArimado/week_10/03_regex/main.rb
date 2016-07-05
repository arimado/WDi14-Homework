# matches = "The number 42...".match /number (\d+)/
# puts matches.pre_match
# puts matches.string
# puts matches[0]
# puts "The actual number: #{matches[1]}"
# puts matches.post_match
#
#
# matches = "The number 42...".match /number (?<meaning>\d+)/
# puts matches.pre_match
# puts matches.string
# puts matches[0]
# puts "The actual number: #{matches[:meaning]}"
# puts matches.post_match

# -------------------------------

# group_of_numbers = "123 456 789"
# m = group_of_numbers.match(/\d+/)
# puts m[0]

# -------------------------------

# group_of_numbers = "123 456 789"
# m = group_of_numbers.scan(/\d+/)
# p m

# -------------------------------

# p "(123)-456-789".sub /\D/, ""
# p "(123)-456-789".gsub /\D/, ""
# p "(123)-456-789".split /\D/

# -------------------------------

# p "   ruby    ".match /ruby/
# p "   ruby    ".match /^ruby/
# p "ruby    ".match /^ruby/
# p "   ruby    ".match /ruby$/
# p "   ruby".match /ruby$/

# -------------------------------

# p "RUBY".match(/ruby/i)[0]
matches = "123-456-789".match(/
    (?<area_code>\d+)-
    (?<exchange>\d+)-
    (?<suffix>\d+)
/x)

p matches
p matches[:area_code]
p matches[:exchange]
p matches[:suffix]
p matches[3]
