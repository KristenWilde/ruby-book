class Integer

  def to_roman
    roman = []
    
    roman.push "m"*(self/1000)
    
    if ((self%1000)>=900)
      roman.push "cm"
    else 
      roman.push "d"*((self%1000)/500)
      if ((self%500)>=400) 
        roman.push "cd"
      else 
        roman.push "c"*((self%500)/100)
      end
    end
    
    if ((self%100)>=90) 
      roman.push "xc"
    else
      roman.push "l"*((self%100)/50)
      if ((self%50)>=40)
        roman.push "xl"
      else 
        roman.push "x"*((self%50)/10)
      end
    end  
  
    if ((self%10)>=9)
      roman.push "ix"
    else
      roman.push "v"*((self%10)/5)
      if ((self%5)==4)
        roman.push "iv"
      else
        roman.push "i"*(self%5)
      end
    end
    
    roman.join().upcase
  end  
  
end

puts 5.to_roman
puts 3194.to_roman
puts 422.to_roman
