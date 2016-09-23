# I guessed that this program would return a new modified array, 
# =>[2, 3, 4, 5, 6].
# But it didn't because the new values weren't stored anywhere. Here is my program
# which returns the new array.

x = [1, 2, 3, 4, 5]
new = x.each do |a|
  a = x.unshift(x.pop + 1)
end

p new
