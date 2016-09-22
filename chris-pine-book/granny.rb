text=gets.chomp
while text != "BYE BYE BYE"
  year = rand(21) + 1940
  if (text == text.upcase) 
    puts "NO, NOT SINCE " + year.to_s
  else puts "HUH?! SPEAK UP, SONNY!"
  end
  text=gets.chomp
end

    
