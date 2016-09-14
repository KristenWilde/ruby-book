def romanize number
  roman = []
  
  roman.push "m"*(number/1000)
  
  if ((number%1000)>=900)
    roman.push "cm"
  else 
    roman.push "d"*((number%1000)/500)
    if ((number%500)>=400) 
      roman.push "cd"
    else 
      roman.push "c"*((number%500)/100)
    end
  end
  
  if ((number%100)>=90) 
    roman.push "xc"
  else
    roman.push "l"*((number%100)/50)
    if ((number%50)>=40)
      roman.push "xl"
    else 
      roman.push "x"*((number%50)/10)
    end
  end  

  if ((number%10)>=9)
    roman.push "ix"
  else
    roman.push "v"*((number%10)/5)
    if ((number%5)==4)
      roman.push "iv"
    else
      roman.push "i"*(number%5)
    end
  end
  
  puts roman.join().upcase

end    

puts "This program converts your number to roman numerals. Enter your number (between 1 and 3000)."
number = gets.chomp.to_i
romanize number