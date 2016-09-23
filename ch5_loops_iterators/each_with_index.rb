my_array = ["broccoli", "shrimp", "apples", "chicken", "peppers"]

my_array.each_index do |i|
  puts "#{i}. #{my_array[i]}"
end

# I couldn't find .each_with_index at http://ruby-doc.org/core-2.3.1/Array.html!
# So I had to learn about it from the Solution to this exercise. Cool method. Here's 
# my program again using .each_with_index. And, even though the directions say to 
# print the INDEX, not the ordinal number, I'll start with 1. 
puts

my_array.each_with_index do |food, index|
  puts "#{index + 1}. #{food}"
end