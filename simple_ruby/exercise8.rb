#Write a Ruby program that takes a base and an exponent as variables, calculates the result of raising the base to the exponent, and prints the result.

def power(base, exponent)
  result = 1
  exponent.times do
    result *= base
  end
end


base = 2
exponent = 2
result = power(base, exponent)

p "Result: #{result}"