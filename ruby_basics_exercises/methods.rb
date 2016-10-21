
def return_hello
  'Hello'
end

def return_world
  'World'
end

def greet
  return_hello + " " + return_world
end

puts greet

###

def car(make, model)
  puts make + ' ' + model
end

car('Toyota', 'Corolla')

###

def time_of_day(boolean)
  if boolean 
    puts "It's daytime" 
  else 
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

###

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

###

def assign_name(name = 'Bob')
  name
end

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'

###

def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

###

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))