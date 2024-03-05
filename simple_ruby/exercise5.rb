#Write a Ruby program that takes the length and width of a rectangle as variables, calculates the area, and prints the result.

def calculate_area(length, width)
  area = length * width
  "The area of the rectangle with length #{length}cm and width #{width}cm is: #{area}"

end

p calculate_area(42, 21)