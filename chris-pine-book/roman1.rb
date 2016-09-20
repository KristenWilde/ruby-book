def romanize number
  roman = []
  roman.push "m"*(number/1000)
  roman.push "d"*((number%1000)/500)
  roman.push "c"*(((number%1000)%500)/100)
  roman.push "l"*((((number%1000)%500)%100)/50)
  roman.push "x"*(((((number%1000)%500)%100)%50)/10)
  roman.push "v"*((((((number%1000)%500)%100)%50)%10)/5)
  roman.push "i"*(((((((number%1000)%500)%100)%50)%10)%5))
  puts roman.join().upcase
end    

puts "This program converts your number to old-school roman numerals. Enter your number."
number = gets.chomp.to_i
romanize number
