puts "This program will tell you the leap years between the years you enter."
puts "Please enter a starting year."
current=gets.to_i
puts "Please enter an ending year."
ending=gets.to_i
puts "The leap years between (and including) those years:"

while current <= ending
  if current%4==0 && (current%100!=0 || current%400==0)
    puts current.to_s
  end
  current = current + 1
end

