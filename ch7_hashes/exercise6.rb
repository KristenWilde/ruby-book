# 6. Program that prints out groups of words that are anagrams (same letters, different order).

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |w|
  key = w.split('').sort.join
  if result.has_key?(key)
    result[key].push(w)
  else
    result[key] = [].push(w)
  end
end


result.values.each {|v| p v }