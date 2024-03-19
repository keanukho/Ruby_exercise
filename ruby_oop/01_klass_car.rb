# new attributes car_type class 1 class 2 class 3, plate_number
# Create an array on instance of car (atleast 10 or )
#
# 1. filter the array of car class and return cars with class type 1 /
# 2. Print plate_number/
# 3. Return most common color
# 4. modify the decrease speed to avoid negative number
# 5. create a script that will change the speed of the class (make it random)
# 6. Modify the color of each car randomly (loop)


# class Car
#   def initialize(color, model, year)
#     @speed = 0
#     @color = color
#     @model = model
#     @year = year
#   end
#
#   def speed
#     @speed
#   end
#
#   def increase_speed
#     @speed += 1
#   end
#
#   def decrease_speed
#     @speed -= 1
#   end
# end
#
# toyota = Car.new('blue', 'toyota', '1997')
# isuzu = Car.new('blue', 'isuzu', '2000')
# honda = Car.new('blue', 'honda', '2001')
#
# toyota.increase_speed # 1 2 3
# toyota.increase_speed
# toyota.increase_speed
# p toyota.speed
# toyota.decrease_speed
# toyota.decrease_speed
# toyota.decrease_speed
# toyota.increase_speed
# toyota.increase_speed
# p toyota.speed # 1 2 3 | 2 1 0 | 1 2
# # => 2



class Car
  attr_accessor :color, :car_type
  attr_reader :model, :year, :serial_number, :plate_number
  attr_writer :serial_number

  def initialize(color, model, year, car_type, plate_number)
    @speed = 0
    @color = color
    @model = model
    @year = year
    @car_type = car_type
    @plate_number = plate_number
  end

  def details
    {
      color: color,
      model: model,
      year: year,
      car_type: car_type,
      plate_number: plate_number,
    }
  end
  def speed
    @speed
  end

  def increase_speed
    @speed += 1
  end

  def decrease_speed
    @speed = [@speed - 1, 0].max
  end
end


cars = [
  Car.new('blue', 'Toyota', '1997', 'class 1', 'ABC123'),
  Car.new('red', 'Isuzu', '2000', 'class 2', 'DEF456'),
  Car.new('black', 'Honda', '2006', 'class 3', 'GHI789'),
  Car.new('blue', 'Subaru', '2002', 'class 1', 'JKL101'),
  Car.new('yellow', 'Lexus', '2005', 'class 2', 'LMN112'),
  Car.new('red', 'BMW', '2011', 'class 3', 'OPQ131'),
  Car.new('gray', 'Ford', '2020', 'class 1', 'RST415'),
  Car.new('white', 'KIA', '2024', 'class 2', 'UVW161'),
  Car.new('brown', 'Hyundai', '2015', 'class 3', 'XYZ718'),
  Car.new('purple', 'Honda', '2009', 'class 1', 'KIA666'),
]



# selected_index = 5  # Selecting the third car (index 2)
# selected_car = cars[selected_index]
#
# puts "Selected Car Details:"
# puts "Color: #{selected_car.color}"
# puts "Model: #{selected_car.model}"
# puts "Year: #{selected_car.year}"
# puts "Car type: #{selected_car.car_type}"
# puts "Plate number: #{selected_car.plate_number}"
# puts "-----------------------"


#1. filter the array of car class and return cars with class type 1

class_cars = cars.select { |car| car.car_type == 'class 3' }
class_cars.each do |car|
  puts "Car details:"
  puts "Color: #{car.color}"
  puts "Model: #{car.model}"
  puts "Year: #{car.year}"
  puts "Car type: #{car.car_type}"
  puts "Plate number: #{car.plate_number}"
  puts "-----------------------"
end

# 2. Print plate_number/
cars.each { |car| puts car.plate_number }

# 3. Return most common color
# 4. modify the decrease speed to avoid negative number
# 5. create a script that will change the speed of the class (make it random)
# 6. Modify the color of each car randomly (loop)

















# p toyota.color
# p toyota.model
# p toyota.year
# toyota.serial_number ='qwerqwerqwer'
# p toyota.details






