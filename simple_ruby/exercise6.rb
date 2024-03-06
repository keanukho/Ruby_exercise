#Write a Ruby program that takes a number as input, determines
#whether it's even or odd, and prints the result.


def is_even_or_odd(number)
  if number % 2 == 0
    result = "even"
  else
    result = "odd"
  end
  "The number #{number} is #{result}."
end

print 'Input a number: '
num = gets.chomp.to_i
p is_even_or_odd(num)
