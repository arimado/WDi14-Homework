# Write some code that takes word problems in the following formats:
#
# What is 5 plus 13?
# What is 7 minus 5?
# What is -6 multiplied by 4?
# What is 25 divided by -5?
# and returns the answer as an integer.

puts "Tell me your calculation!"
calc = gets.chomp
match = /[0-9]/
n1pos = calc =~ match
n1 = calc[n1pos];
n1.to_i
puts "n1: "
p n1
calc2 = calc[(n1pos + 2)..calc.length]
match2 = /\s/
opPos = calc2 =~ match2
op = calc2[0..(opPos - 1)]
puts "op: "
p op
n2 = calc2[(opPos + 1)..calc2.length]
n2.to_i
p n2;

# -----------------------------
# n1, op, n2

if op == "plus"
    puts "#{n1} + #{n2}: "
    result = n1.to_i + n2.to_i;
    puts result
end

if op == "minus"
    puts "{n1} - {n2}: "
    puts n1.to_i - n2.to_i
end

if op == "times"
    puts "{n1} + {n2}: "
    puts n1.to_i * n2.to_i
end

if op == "divide"
    puts "{n1} + {n2}: "
    puts n1.to_i / n2.to_i
end
