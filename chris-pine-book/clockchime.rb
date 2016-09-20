# a method that takes a block and calls it once for each hour of the current time.

def clockchime &block_to_do
  
  hour = (Time.new.localtime("-04:00").hour)%12 
  if hour == 0
    hour = 12
  end

  hour.times do
    block_to_do.call
  end
  
end

clockchime do
  puts 'DONG!'
end
