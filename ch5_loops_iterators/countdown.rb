# Counts down to zero using recursion, starting at a random number between 20 and 50.

def countdown x
  print x
  print " "
  x -= 1
  unless x == -1
    countdown x
  end
end

countdown(rand(30) + 20)

puts