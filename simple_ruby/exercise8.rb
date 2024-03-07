# Write a Ruby program that takes a base and an exponent as variables,
# calculates the result of raising the base to the exponent, and prints the result.


#METHOD TYPE
def power(base, exponent)
  base ** exponent
end

print 'Input a base: '
  base = gets.chomp.to_i
print 'Input a exponent: '
  exponent = gets.chomp.to_i

puts power(base, exponent)


# #SCRIPT TYPE
#
# print 'Input a base: '
#   base = gets.chomp.to_i
# print 'Input a exponent: '
#   exponent = gets.chomp.to_i
#
# puts base ** exponent