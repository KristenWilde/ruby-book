# Short-circuits: setting defaults if the first option is nil. 

input = nil
name = input || "user"
puts name

def sign_in
  current_session || sign_user_in
end


# Conditional assignment: ||= assigns default.

puts message ||= "Not found"


# Conditional return: 

search_index = nil
search_result = if search_index
  "Game #{search} found at index #{search_index}"
else
  "Not found"
end
puts search_result


# Optional arguments 

    def tweet(message, lat = nil, long = nil) 
      puts message # + location if we wrote that into the method.
    end

  # or use option hash:

    def tweet(message, options = {})
      puts message
      # other stuff using options if present
    end
  
  # to call: (option keys can be in any order! or leave them out!)

  tweet("Practicing Ruby", 
    lat: 28.55,
    long: -81.33,
    reply_id: 228645
  )


  


