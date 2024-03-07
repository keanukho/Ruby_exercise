#Write a Ruby program that takes a year as input and checks whether it is a leap year. Print the result.

#METHOD TYPE

# def knows_leap_year(year)
#   if year % 400 == 0
#     return "leap year"
#   elsif year % 100 == 0
#     return "not leap year"
#   elsif year % 4 == 0
#     return "leap year"
#   else
#     return "not leap year"
#   end
# end
#
# print 'Input a year: '
# year = gets.chomp.to_i
# puts knows_leap_year(year)


#SCRIPT TYPE

print 'Input a year: '
  year = gets.chomp.to_i

  if year % 400 == 0
    puts "#{year} is a leap year"
  elsif year % 100 == 0
    puts "#{year} is not a leap year"
  elsif year % 4 == 0
    puts "#{year} is a leap year"
  else
    puts "#{year} is not a leap year"
  end
#