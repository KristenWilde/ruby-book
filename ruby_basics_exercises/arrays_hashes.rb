# Arrays

pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2..3]
puts "I have a pet #{my_pet[0]} and a pet #{my_pet[1]}!"


my_pets = pets[2..3]
my_pets.delete('lizard')
puts "I have a pet #{my_pets[0]}!"

my_pets << pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

colors = ['red', 'yellow', 'purple', 'green']
colors.each { |color| puts "I'm the color #{color}!" }

numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map { |num| num * 2 }
p doubled_numbers

numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select { |num| num % 3 == 0 }
p divisible_by_three 

# Hashes

car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}

car[:year] = 2003

car.delete :mileage
p car

puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, val| puts "A #{key} number is #{val}." }

half_numbers = numbers.map { |_, val| val / 2 }
p half_numbers

low_numbers = numbers.select! { |key, val| val < 25 }
p low_numbers
p numbers

car_and_truck = {
  car: {
    type: 'sedan',
    color: 'blue',
    year: 2003
  },
  truck: {
    type: 'pickup',
    color: 'red',
    year: 1998
  }
}

p car_and_truck

p car.to_a