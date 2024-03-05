#Write a Ruby program that takes two numbers as user input, calculates their sum, and prints the result.

def calculate_sum (x,y)
  x+y
end

x = 2
y = 10

sum = calculate_sum(x, y)

p "The sum of #{x} and #{y} is: #{sum}"