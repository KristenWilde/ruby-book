# How to find out if a hash contains a specific value

high_scores = {:Kathy=>530, :Jaydon=>530, :Zach=>1010, :Josh=>670, :Kristen=>890, :Juliana=>320}

# One way: use .select

hash_with_1010 = high_scores.select { |k,v| v == 1010}

if (hash_with_1010.length > 0) 
  puts "This hash has that value."
else puts "That value is not present."
end

# Another way: use .has_value?

if hash_with_1010.has_value?(1010)
  puts "This hash has that value."
else puts "That value is not present."
end
