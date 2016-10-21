# loop do
#   prompt "Do you want me to print something? (y/n)"
#   answer = gets.chomp.downcase
#   break if %w(y n).include?(answer)
#   prompt "Invalid input! Please enter y or n"
# end

# puts 'something' if choice == 'y'

# _____

# num = nil
# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3:'
#   num = gets.chomp.to_i
#   break if num >= 3
#   puts ">> That's not enough lines."
# end

# num.times do
#   puts 'Launch School is the best!'
# end

# _____

# PASSWORD = SecreT.freeze

# loop do
#   puts ">> Please enter your password:"
#   password_attempt = gets.chomp
#   break if password_attempt == PASSWORD
#   puts ">> Invalid password!"
# end

# puts 'Welcome!'

# ____

# PASSWORD = 'SecreT'.freeze
# USERNAME = 'admin'.freeze

# loop do
#   puts ">> Please enter user name:"
#   username_attempt = gets.chomp
#   puts ">> Please enter your password:"
#   password_attempt = gets.chomp
#   break if password_attempt == PASSWORD && username_attempt == USERNAME
#   puts ">> Authorization failed!"
# end

# puts 'Welcome!'

# _____

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# denominator = nil

# loop do
#   puts ">> Please enter the numerator:"
#   numerator = gets.chomp
#   break if valid_number?(numerator)
#   puts ">> Invalid input. Only integers are allowed."
# end

# loop do
#   puts ">> Please enter the denominator:"
#   denominator = gets.chomp
#   if denominator == '0'
#     puts ">> Invalid input. A denominator of 0 is not allowed."
#   else
#     break if valid_number?(denominator)
#     puts '>> Invalid input. Only integers are allowed.'
#   end
# end

# answer = numerator.to_i / denominator.to_i
# puts "#{numerator} / #{denominator} is #{answer}"

# _______

# entry = nil

# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
#   entry = gets.chomp.downcase
#   break if entry == 'q' || entry.to_i >= 3
#   puts ">> That's not enough lines."
# end

# unless entry == 'q'
#   entry.to_i.times do
#     puts 'Launch School is the best!'
#   end
# end

# ______

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def one_positive_one_negative?(number1, number2)
  number1.positive? && !number2.positive? ||
  number2.positive? && !number1.positive?
end

def prompt(msg)
  puts ">> " + msg
end

num1, num2 = nil

loop do
  prompt 'Please enter a positive or negative interger:'
  string1 = gets.chomp
  prompt 'Please enter a positive or negative interger:'
  string2 = gets.chomp
  
  unless valid_number?(string1) && valid_number?(string2)
    prompt 'Invalid input. Only non-zero intergers are allowed.'
    next
  end
  
  num1 = string1.to_i
  num2 = string2.to_i
  
  break if one_positive_one_negative?(num1, num2)
  prompt "Sorry. One interger must be positive, one must be negative."
  prompt "Please start over."
end

puts "#{num1} + #{num2} = #{num1 + num2}"