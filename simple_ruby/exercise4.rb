#Write a Ruby program that takes a user's first name and last name as input, concatenates them, and prints the full name.



def get_name_from_user(first_name, last_name)
  full_name = first_name<< last_name
  "Your full name is: #{full_name}"

end

p get_name_from_user("Keanu", " Kho")


