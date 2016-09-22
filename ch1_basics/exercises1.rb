puts
puts "Exercise 1: concatenating strings"
puts

puts "Kristen" + " " + "Wilde"

puts
puts "-----------------------------"
puts "Exercise 2: % and /"
puts

num = 5831
puts "Our number is #{num}"
puts "thousandths place: #{num/1000}"
puts "hundredths place: #{num%1000/100}"
puts "tens place: #{num%100/10}"
puts "ones place: #{num%10}"

puts
puts "-----------------------------"
puts  "Exercise 3: Movie hash"
puts

movies = { Help!: 1965,
          Aladdin: 1992,
          Land_Before_Time: 1988,
          Hunger_Games: 2012          }
          
puts movies[:Help!]
puts movies[:Aladdin]
puts movies[:Land_Before_Time]
puts movies[:Hunger_Games]

puts
puts "--------------------------------"
puts "Exercise 4: Array"
puts

movie_array = [1965, 1992, 1988, 2012]

movie_array.each { |year| puts year }

puts
puts "--------------------------------"
puts "Exercise 5: Factorials"
puts

def factorial number
  product = number
  while number > 1
    product = product * (number - 1)
    number = number - 1
  end
  product
end

puts factorial 5 
puts factorial 6
puts factorial 7
puts factorial 8

puts
puts "--------------------------------"
puts "Exercise 6: Squares of Floats\n\n"

puts 4.4 * 4.4
puts 1.75 * 1.75
puts 153.0 * 153.0

puts "\n--------------------------------"
puts "Exercise 7: Error message\n\n"

puts "The error message tells me that the computer doesn't know what to do with the symbol ')' on line 2. Maybe it should\'ve been a '}'."
puts
