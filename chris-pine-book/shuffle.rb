#This program defines a new method of the class Array. It returns a shuffled array.

class Array
  
  def shuffle
  
    current = self
    shuf = Array.new
    temp = Array.new
    y = 0
      
    while current.length > 0

      x = rand(current.length)
        
      current.each do |element|
        if y == x
          shuf.push element
        else 
          temp.push element
        end 
        y = y + 1
      end
    
      current = temp
      temp = Array.new
    
    end
    
    shuf
    
  end
  
end
    
    
    