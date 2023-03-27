# require 'sinatra'

def dictionary_s
  key_word = "snowman"
  # puts "This is the Snowman dictionary"
  split = key_word.split("").to_a
  # # new_key_word = split.permutation
  combinations = split.permutation.to_a
  # combinations = split[starting_index..-1].combination(lenght).to_a
  list = combinations.map { |p| p.join("")}
  dictionary = list.sort
  puts dictionary

  position = dictionary.index(key_word)


  if position
    puts "The word #{key_word} is at position #{position} of the dictionary"
  else
    puts "the word #{key_word} is not in the list"
  end

end

# get '/' do
#   "Hello, humans!"
#   puts dictionary_s
# end
puts dictionary_s
