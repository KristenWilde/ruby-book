# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|val| puts val}

puts "-------"
# 2. Same as above, but only print out values greater than 5.

arr.each { |val| if (val > 5) then puts val end }

puts "-------"
# 3. Now use the select method to extract all odd numbers into a new array.

new_arr = arr.select { |val| val%2 == 1 }
p new_arr

puts "-------"
# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

p arr.push(11).unshift(0)

puts "-------"
# 5. Get rid of "11". And append a "3".

arr.pop()
p arr.push(3)

puts "-------"
# 6. Get rid of duplicates without specifically removing any one value.

p arr.uniq!

puts "-------"
# 7. difference between an Array and a Hash

puts "An array is a set of elements referenced with index numbers. A hash is an unordered set of 
key-value pairs that can be referenced with keys."

puts "-------"
#8. Create a Hash using both Ruby syntax styles.

h = {name: "Kristen", age: 37}
hsh = {"name" => "Kristen", "age" => 37} # keys can be symbols or other objects instead of strings.
p h
p hsh

puts "-------"
#9. 

h = {a:1, b:2, c:3, d:4}

  #1. Get the value of key `:b`.
  value = h[:b]
  p value
  
  #2. Add to this hash the key:value pair `{e:5}`
  h[:e]=5
  p h
  
  #3. Remove all key:value pairs whose value is less than 3.5
  h.delete_if {|key, val| val < 3.5 }
  p h

puts "-------"
#10. Can hash values be arrays? Can you have an array of hashes? (give examples)

puts "Yes to both."
p hash_of_arrays = { :zipcodes => [33558, 84957, 21126], :kids => ["Jay", "Chris"]}
p array_of_hashes = [{a:1, b:2}, {c:3, d:4}, {e:5}]

puts "-------"
#11. Look at several Rails/Ruby online API sources and say which one you like best and why.

puts "http://ruby-doc.org/core-2.3.1 works for me for now, so I probably won't spend much time searching 
for other online resources unless someone recomends them. I am interested in checking out the pickaxe book."

puts "-------"
# 12. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts.each do |key, value|
  name = key.slice(0,3).downcase
    contact_data.each do |arr|
      if arr[0].start_with?(name)
        value[:email] = arr[0]
        value[:address] = arr[1]
        value[:phone] = arr[2]
      end
    end
  end

p contacts  

puts "------"
# 13. demonstrate how you would access Joe's email and Sally's phone number?

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

puts "------"
# 14. . . . 

puts "I already did this, a different way, in exercise 12. I used string methods and a 
conditional to match keys in contacts to email addresses in contact_data, and iterated 
through both data structures at the same time."

puts "------"
# 15. Use Ruby's Array method delete_if and String method start_with? to delete all of the 
# words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") }
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s", "w") }
p arr

puts "------"
# 16. turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

split_arrays = a.map { |pair| pair.split(' ')}
p split_arrays.flatten

puts "------"
# 17. What will the program output?

p "It will print 'These hashes are the same!' and return nil."