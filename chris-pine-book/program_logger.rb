#This method takes a description and a block. It informs us that the block is started, that it is finished,
# and what it returned. Blocks are nested within blocks, calling the log method in each block. The global 
# variable $nesting_level is incremented with each inner block, and multiplied by a string of two spaces
# to add indentation.

$nesting_level = 0 

def log description, &block

  spaces = "  "*$nesting_level
  
  puts "#{spaces}Beginning '#{description}' . . ."
  
  $nesting_level += 1
  
  return_val = block.call
  
  $nesting_level -= 1
  
  puts "#{spaces} . . . '#{description}' finished, returning: '#{return_val}'"
  
end

log 'snack' do
  snack_value = Time.new.localtime("-04:00").strftime("It's %l:%M. Time for a snack!")
  log 'hungry' do
    log 'sandwich' do 
      'I would like a sandwich.'
    end  
    if rand(1) == 1
      'I am very hungry'
    else
      'I\'m not very hungry right now.'
    end
  end
  snack_value
end

  