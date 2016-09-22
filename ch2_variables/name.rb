
puts "Please enter your first name."

first_name = gets.chomp

puts "Thank you. Now please enter your last name."

last_name = gets.chomp

name = first_name + " " + last_name

puts "Hello #{name}! Thanks for being here. \n"

10.times do
  print name + "  "
end

puts