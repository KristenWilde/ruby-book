
class OrangeTree
    
  def initialize
    @height = 0  #feet
    @age = 0     #years
    @orange_count = 0
    @final_age = rand(6) + 45
    @picked = 0
  end
    
  def height
    @height
  end
  
  def one_year_passes
    
      @age += 1
      
      if height < 10
        @height += 2
      else
        @height += 1
      end
      
      #new oranges grow:
      if ((3..6).include?@age) || ((31..@final_age).include?@age)
        @orange_count = @height * 3
        else if (7..30).include?@age
        @orange_count = @height * 5
        end
      end

      puts "Your tree is #{@age} years old and #{@height} feet tall."
  
      if @age > @final_age
        puts "Your tree lived #{@final_age} years."
        @height = 0
        @orange_count = 0
      end
      
  end

  
  def pick number
    if @orange_count == 0
      puts 'There are no more oranges to pick this year. :('
    else
      if number <= @orange_count
        @orange_count = @orange_count - number
        @picked = number
        puts "You picked #{number}. Delicious!"
      else 
        puts "There were #{@orange_count} oranges and you picked them all. So sweet and juicy!"
        @picked = @orange_count
        @orange_count = 0
      end
    end
  end

  def count_the_oranges
    puts "There are #{@orange_count} ripe oranges on your tree."
  end

end    
    
cal = OrangeTree.new
cal.one_year_passes
cal.height
cal.one_year_passes
cal.one_year_passes
cal.count_the_oranges
cal.one_year_passes
cal.count_the_oranges
cal.pick 5
cal.count_the_oranges
cal.one_year_passes
cal.count_the_oranges
cal.pick 77
cal.count_the_oranges
cal.one_year_passes
cal.one_year_passes
cal.one_year_passes
cal.count_the_oranges
cal.pick 12
cal.count_the_oranges
cal.one_year_passes
cal.one_year_passes
cal.one_year_passes
cal.pick 34
cal.count_the_oranges
cal.one_year_passes
