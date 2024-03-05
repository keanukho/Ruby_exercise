#Write a Ruby program that takes two variables as input, swaps their values, and prints the new values.

def two_variables_swap(var1, var2)
  temp = var1
  var1 = var2
  var2 = temp
  puts ("#{var1} is the initial variable, while #{var2} represents the second variable at present.")
end

two_variables_swap(6,7)