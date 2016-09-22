#This program defines a new method of the class Array. It returns a shuffled array.

class Array
  
  def shuffle
  
    current = self
    shuf = Array.new
      
    while current.length > 0

      temp = Array.new
      x = rand(current.length)
      y = 0
        
      current.each do |element|
        if y == x
          shuf.push element
        else 
          temp.push element
        end 
        y = y + 1
      end
    
      current = temp
    
    end
    
    shuf
    
  end
  
end
    
    
    