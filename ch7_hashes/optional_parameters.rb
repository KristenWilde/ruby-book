def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, I'm #{name} from #{options[:city]}. " +
          "I like #{options[:activity]}."
    if options[:age]
      puts "I'm " + options[:age].to_s
    end
  end
end

greeting("Julie")
greeting("Mack", {age: 27, activity: "teaching yoga", city: "Gainesville"})
greeting("Dottie", activity: "being a grandma", city: "Atlanta")

members = {Ara: {age: 55, activity: "singing", city: "Mexico City"},
          Jerry: {activity: "electrical work", city: "St. Pete"},
          Marla: {activity: "being involved", city: "Dade City"}, 
          Ted: ""
}

members.each do |name, options|
  greeting(name, options)
end

 members.keys.each { |key| key.to_s + " " }
print "The choir members are "
members.keys.each { |key| print key.to_s + " " }
puts