puts "Type as many words as you like, one per line. When you're finished, press Enter on an empty line."
words=[]
while true
  new_word=gets.chomp
  if (new_word=="")
    sorted_array = words.sort
    puts sorted_array.join(', ')
    break
  else 
    words.push new_word
  end
end 

