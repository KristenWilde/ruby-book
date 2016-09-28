high_scores = {:Kathy=>530, :Jaydon=>530, :Zach=>1010, :Josh=>670, :Kristen=>890, :Juliana=>320}

# Write a program that loops through a hash and prints all of its keys.
# One way:

high_scores.each { |user, score| print user.to_s + " " }
puts

# Another way:

high_scores.keys.each { |k| print k.to_s + " " }
puts

# Write a program that prints the values

high_scores.values.each { |v| print v.to_s + " " }
puts

# Write a program that prints both

high_scores.each do |user, score| 
  puts "#{user}\'s high score was #{score}"
end
