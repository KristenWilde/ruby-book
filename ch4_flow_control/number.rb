puts "Please enter a number between 0 and 100."

my_num = gets.to_i

def evaluate_with_if number
  if number >= 0 && number <= 50
    puts "That number is between 0 and 50."
  elsif number >= 51 && number <= 100
    puts "That number is between 51 and 100."
  elsif number > 100
    puts "That number is above 100."
  else
    puts "That is not a number between 0 and 100."
  end
end

def evaluate_with_case number
  case 
    when number >= 0 && number <= 50
      puts "That number is between 0 and 50."
    when number >= 51 && number <= 100
      puts "That number is between 51 and 100."
    when number > 100
      puts "That number is above 100."
    else
      puts "That is not a number between 0 and 100."
    end
end

def case_refactored number
  response = case number
    when 0..50 then "Your number is between 0 and 50."
    when 51..100 then "Your number is between 51 and 100."
    else "Your number is not between 0 and 100."
    end
  puts response
end
    

evaluate_with_if my_num
evaluate_with_case my_num
case_refactored my_num

