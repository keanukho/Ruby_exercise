#Write a Ruby program that takes a year as input and checks whether it is a leap year. Print the result.

def knows_leap_year(year)
  if year % 4 == 0
    return "leap year"
  else
    return "not leap year"
  end
end

p knows_leap_year(2004)