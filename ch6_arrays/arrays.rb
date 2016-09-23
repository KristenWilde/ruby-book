# Exercises for ch. 6, Arrays

# 1. Checks to see if the number appears in the array
puts "Exercise 1"

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include? number then puts "That number is in the array!"
else puts "Not in the array."
end

puts "---------------------\n"
# 2. 
    #1. The program returns the value that was deleted in the last line of the 
    #   program, which is the number 1. The value of arr is mutated to 
    #   [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 
    
    #2. Returns [1, 2, 3]. The value of arr is now 
    #   [["b"], ["a", [1, 2, 3]]]


# 3.  arr[1][0] or arr.last.first

# 4.  
    #1. 3 because that's the index of the item 5.
    #2. Error. This method doesn't work with square brackets.
    #3. 8, the item at index position 5.

# 5.  a: "e" 
#     b: "A" 
#     c: nil 

# 6. The problem is that the program thinks you're trying to submit 'margaret' as
#    an index, and it's not an interger. What you're trying to do is change the item
#    'margaret' to 'jody'. This can be done with names[3] = 'jody'


# 7. Program that increments each value in an array by 2.

puts "Exercise 7"

y = [1, 2, 3, 4, 5]
new = y.map { |a| a += 2 }

p y
p new
