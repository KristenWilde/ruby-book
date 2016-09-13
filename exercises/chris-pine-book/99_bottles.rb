number=100

while number > 1
  number=number - 1
  verse=number.to_s + " bottles of beer on the wall. " + number.to_s + " bottles of beer. \n Take one down, pass it around, " + (number - 1).to_s + " bottles of beer on the wall."
  puts verse
end
