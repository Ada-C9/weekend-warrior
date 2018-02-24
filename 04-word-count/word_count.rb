# Completed 2/23/18

# Returns the number of each word in provided_words.
def words(provided_words)
  word_count = {}
  provided_words_as_array = provided_words.strip.split(/\s+/)
  provided_words_as_array.each do |word|
    word_count[word] = 0 if !word_count.has_key?(word)
    word_count[word] += 1
  end
  return word_count
end
