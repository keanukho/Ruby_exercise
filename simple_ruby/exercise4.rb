# Write a Ruby program that takes a user's first name and last name as input,
# concatenates them, and prints the full name.


#METHOD TYPE

def get_name_from_user(first_name, last_name)
  full_name = first_name + " " + last_name
  "Your full name is: #{full_name}"
end

print 'Input a first name: '
  first_name = gets.chomp
print 'Input a last name: '
  last_name = gets.chomp

puts get_name_from_user(first_name, last_name)


# #SCRIPT TYPE

# print 'Input a first name: '
#   first_name = gets.chomp
# print 'Input a last name: '
#   last_name = gets.chomp
#
#  full_name =  first_name<< " " << last_name
#
# print "your full name is #{full_name}"