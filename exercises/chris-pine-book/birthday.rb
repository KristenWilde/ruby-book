# This program reads a text file listing names and birthdates (birthday.txt). 
# It asks the user to type in a name, then tells when the person's next birthday will be
# and how old they'll be.

def next_birthday person 
  day = birthday_hash[person] #.strftime("%m/%d")
  day
end

birthday_hash = Hash.new
filename = 'birthday.txt'
birthday_string = File.read filename

# Build the birthday_hash:
birthday_string.each_line do |line|
  mini_array = line.chomp.split  #Makes a new little array containing strings. Perfect! I can use index numbers!
  name = mini_array[0] + " " + mini_array[1].chomp(',')
  birthdate = Time.local(mini_array[4], mini_array[2], mini_array[3].chomp(''))
  birthday_hash[name] = birthdate
end

#time = Time.new

puts "Whose birthday would you like to know? Enter their first and last name, please."
person = gets.chomp

puts 
puts person + "'s birthday is " + next_birthday(person) + "!"

