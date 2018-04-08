
def words(words)

  return "0" if words == nil

  array =  words.split(' ')
  puts array.to_s
  hash = {}

  array.each do |value|
    if hash.key?(value)
      hash[value] +=1
    else
      hash[value] = 1
    end
  end
return hash
end
words("hello world")
