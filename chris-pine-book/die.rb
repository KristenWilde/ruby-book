# This program creates a new class of object, a Die. It has methods .roll, .showing, and .cheat

class Die
    
  def initialize
    roll
  end
    
  def roll
    @number_showing = 1 + rand(6)
  end
    
  def showing
    @number_showing
  end
  
  def cheat num
    if (1..6).include?num
      @number_showing = num
    end
  end
  
  Die
end    

