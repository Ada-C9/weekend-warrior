# require 'benchmark'
#
# provided_words_list = ["hello\nworld", "\t\tIntroductory\n\n\n\nCourse      ",
#   "one fish two fish red fish blue fish"]
#
# provided_words_list.each do |provided_words|
#   puts provided_words.inspect
#   print "\t"
#   n = 50000
#   Benchmark.bm do |x|
#     print "array:\t   "
#     x.report do
#       n.times do
#         word_count = {}
#         provided_words_as_array = provided_words.strip.split(/\s+/)
#         provided_words_as_array.each do |word|
#           word_count.has_key?(word) ? word_count[word] += 1 : word_count[word] = 1
#         end
#       end
#     end
#
#     print "non-array: "
#     x.report do
#       n.times do
#         word_count = {}
#         word = ""
#         provided_words.length.times do |index|
#           if provided_words[index].match(/\S/)
#             word << provided_words[index]
#           elsif !word.empty?
#             word_count.has_key?(word) ? word_count[word] += 1 : word_count[word] = 1
#             word = ""
#           end
#         end
#         if !word.empty?
#           word_count.has_key?(word) ? word_count[word] += 1 : word_count[word] = 1
#         end
#       end
#     end
#   end
#   puts "-" * 60
# end

# Returns the number of each word in provided_words.
def words(provided_words)
  return array_solution(provided_words)
  # return non_array_solution(provided_words)
end

private

def array_solution(provided_words)
  word_count = {}
  provided_words_as_array = provided_words.strip.split(/\s+/)
  provided_words_as_array.each do |word|
    update_word_count(word, word_count)
  end
  return word_count
end

def non_array_solution(provided_words)
  word_count = {}
  word = ""
  provided_words.length.times do |index|
    if provided_words[index].match(/\S/)
      word << provided_words[index]
    elsif !word.empty?
      update_word_count(word, word_count)
      word = ""
    end
  end
  update_word_count(word, word_count) if !word.empty?
  return word_count
end

def update_word_count(word, word_count)
  word_count.has_key?(word) ? word_count[word] += 1 : word_count[word] = 1
end
