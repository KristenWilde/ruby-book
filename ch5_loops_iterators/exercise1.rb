# I guessed that this program would return a new modified array, 
# =>[2, 3, 4, 5, 6].
# But it didn't because the new values weren't stored anywhere. Here is my program
# which returns the new array.

x = [1, 2, 3, 4, 5]

x.each do |a|
  a = x.unshift(x.pop + 1)
end
p x

# After reading chapter 6, here is another way to do this, without using .each. 

y = [1, 2, 3, 4, 5]
p y.map { |a| a += 1 } 

# However, like .each, .map does not mutate the caller.
p y # prints the original array y.