# Jeanne Keanu Echevarria
# Class Batch_6
# Create a Ruby program that accepts an array of purchase amounts. For each purchase,
# apply a 15% discount if the amount is greater than $100, a 10% discount if it's between
# $50 and $100, and no discount if it's below $50. Store the discounted amounts in a new array.


purchase_amounts = []
while true
  print '(press x to stop inputting score) Input amount: '
  input = gets.chomp

  if input == 'x'
    break
  else
    purchase_amounts << input.to_f
  end
end

discounted_amounts = purchase_amounts.map do |amount|
  if amount > 100
    amount * 0.85 # 15% discount
  elsif amount >= 50 && amount <= 100
    (amount * 0.9).round(2) # 10% discount
  else
    amount # no discount
  end
end

p discounted_amounts