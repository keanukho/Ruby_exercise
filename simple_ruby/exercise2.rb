#Write a Ruby program that takes two numbers as variables, performs basic arithmetic operations (addition, subtraction, multiplication, and division), and prints the results.
# Have variables for two numbers.
# Perform addition, subtraction, multiplication, and division on the two numbers.
# Print a message that includes the original numbers and the results of each operation.

def perform_operations(x, y)
sum = x + y
difference = x - y
product = x * y
quotient = x / y

return sum, difference, product, quotient
end

def print_results(x, y, sum, difference, product, quotient)
  puts "The numbers are #{x} and #{y}."
  puts "Addition result: #{sum}"
  puts "Subtraction result: #{difference}"
  puts "Multiplication result: #{product}"
  puts "Division result: #{quotient}"
end

x = 10
y = 2

sum, difference, product, quotient = perform_operations(x, y)
print_results(x, y, sum, difference, product, quotient)