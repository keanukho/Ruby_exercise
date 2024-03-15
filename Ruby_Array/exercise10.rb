# Jeanne Keanu Echevarria
# Class Batch_6
# Create a Ruby program that accepts an array of purchase amounts. For each purchase,
# apply a $20 discount if the amount is greater than $150, a $10 discount if it's between
# $75 and $150, and no discount if it's below $75. Store the discounted amounts in a new array.


def apply_discount(purchases)
  discounted_amounts = []

  purchases.each do |amount|
    if amount > 150
      discounted_amounts << amount - 20
    elsif amount >= 75 && amount <= 150
      discounted_amounts << amount - 10
    else
      discounted_amounts << amount
    end
  end

  discounted_amounts
end

while true
  print "Enter the purchase amount (type 'x' to quit): "
  input = gets.chomp.downcase
  break if input == 'x'

  amount = input.to_i

  discounted_amount = apply_discount([amount])
  puts "Discounted amount: #{discounted_amount.first}"
end
puts "Exiting..."