#Write a Ruby program that takes two variables as input, swaps their values, and prints the new values.

#METHOD TYPE

def two_variables_swap(var1, var2)
  temp = var1
  var1 = var2
  var2 = temp
  puts ("#{var1} is the initial variable, while #{var2} represents the second variable at present.")
end

print "Input a variable: "
var1 = gets.chomp.to_i
print "Input a variable: "
var2 = gets.chomp.to_i

two_variables_swap(var1, var2)


#SCRIPT TYPE

# print "Input a variable: "
#   var1 = gets.chomp.to_i
# print "Input a variable: "
#   var2 = gets.chomp.to_i
#
#   temp = var1
#   var1 = var2
#   var2 = temp
#
# puts ("#{var1} is the initial variable, while #{var2} represents the second variable at present.")
#