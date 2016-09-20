
def exclaim array
  puts ""
  array.each {|thing| puts thing.capitalize + '! I love ' + thing + "!"}
end

puts ""
puts 'Please list of some of your favorite things, separated by commas.'

favorites = gets.chomp.split(", ")

exclaim favorites



