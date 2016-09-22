def sort some_array
  recursvie_sort some_array, []
end

def recursvie_sort unsorted_array, sorted_array
  while true
    if (unsorted_array.last==unsorted_array.min)
      sorted_array.push unsorted_array.pop
    else 
      unsorted_array.push unsorted_array.pop
    end
  recursive_sort unsorted_array, sorted_array  
  end
end

puts "Type as many words as you like, one per line. When you're finished, press Enter on an empty line."
words=[]
while true
  new_word=gets.chomp
  if (new_word=="")
    finished_array = words.sort
    puts finished_array.join(', ')
    break
  else 
    words.push new_word
  end
end 
