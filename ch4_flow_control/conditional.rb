# Six new ways to write conditionals:

puts "Put in a number"
a = gets.to_i 

#1 on one line with "then". 
if a == 3 then puts 'a is 3'
  
#2 elsif (spelled without an e)  
elsif a == 4 then puts 'a is 4'
else puts 'a is neither 3 nor 4'
end

#3 condition can come after
p 'a is 5' if a == 5

#4 "unless" (condition comes after)
p 'a is negative' unless a >= 0
puts 'a is larger than 100' unless a <= 100 

#5 ternaray operator

a == 9 ? "a is 9" : "a is not 9"
a == 8 ? "a is 8" : nil

  #used within a method (so that we can puts the result):
  def evaluate a
    a == 9 ? "a is 9" : "a is not 9"
  end
  
  puts evaluate a

#6 case statements

case a
  when 6
    puts "a is 6"
  when 7
    puts "a is 7"
  when 10
    puts "a is 10"
  else
    puts "a is neither 6, 7, nor 10"
end

# in a variable
answer = case a
  when 11
    "a is eleven"
  when 12 
    "a is 12"
  else 
    "a is neither 11 nor 12"
  end
puts answer

# no argument
answer = case
when a == 13
  'a is 13'
when a == 14
  'a is 14'
end
puts answer unless answer == nil

puts a