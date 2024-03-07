#Write a Ruby program that takes the length and width of a rectangle as variables,
# calculates the area, and prints the result.

#METHOD TYPE
def calculate_area(length, width)
  area = length * width
  "The area of the rectangle with length #{length}cm and width #{width}cm is: #{area}"
end
print "Input a number: "
  length = gets.chomp.to_i
print "Input a number: "
  width = gets.chomp.to_i

p calculate_area(length, width)


# #SCRIPT TYPE
#
# print "Input a number: "
#   length = gets.chomp.to_i
# print "Input a number: "
#   width = gets.chomp.to_i
#
#   area = length * width
#
# puts "The area of the rectangle with length #{length}cm and width #{width}cm is: #{area}"
