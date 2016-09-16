#This method takes roman numerals and converts them to integers.

def roman_to_integer roman
    
  values= { 'm' => 1000,
            'd' => 500,
            'c' => 100,
            'l' => 50,
            'x' => 10,
            'v' => 5,
            'i' => 1   }
  
  index = roman.length-1
  total = 0
  prev = 0
    
  while (index >= 0)
    current_character = roman[index].chr.downcase
    index = index - 1
    value = values[current_character]
    if (value<prev)
      value = -1*value
    else
      prev = value
    end
    total += value 
  end
  
  total
end

puts roman_to_integer('x')
puts roman_to_integer('MXLII')
puts roman_to_integer('DCCIV')
