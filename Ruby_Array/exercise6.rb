# Jeanne Keanu Echevarria
# Class Batch_6
# Write a Ruby program that receives an array of product quantities. For each product,
# if the quantity is greater than 50, mark it as "In Stock"; otherwise, mark it as "Low Stock."

product_quantities = []
while true
  print'(press x to stop inputting score)Input temperature in Celsius: '
  input = gets.chomp

  if input == 'x'
    break
  else
    product_quantities << input.to_i
  end
end

new_product_quantities = product_quantities.map do |quantity|
  if quantity > 50
    "In Stock"
  else
    "Low Stock"
  end
end

p new_product_quantities