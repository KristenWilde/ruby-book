# This program reads a text file listing names and birthdates (birthday.txt). 
# It asks the user to type in a name, then tells when the person's next birthday will be
# and how old they'll be.



birthday_hash = Hash.new
File.read('birthday.txt').each_line do |line| #Go method chaining.
  mini_array = line.chomp.split  #Makes a new little array containing strings. Perfect! I can use index numbers!
  name = mini_array[0] + " " + mini_array[1].chomp(',')
  birthdate = Time.local(mini_array[4], mini_array[2], mini_array[3].chomp(''))
  birthday_hash[name] = birthdate
end

puts "Whose birthday would you like to know? Enter their first and last name, please."

person=gets.chomp

bday = birthday_hash[person] # bday stores the year they were born.

if bday == nil
  puts 'I don\'t know that one!'
end

# The next few lines I copied out of the book.
now = Time.new
age = now.year - bday.year

if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
  age += 1
end

puts 
puts person + "'s birthday is " + bday.strftime("%B %-d") + "."
puts person + " will be turning " + age.to_s + "!"
