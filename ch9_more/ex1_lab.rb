
def check(word)
  if /lab/.match(word)
    puts word
  end
end

words = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

words.each { |word| check(word) }

    