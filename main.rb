input = "below"

dictionary = ["below","down","go","going","horn","how",
              "howdy","it","i","low","own","part","partner",
              "sit"]

#Count the number of occurences of a substring into a string
def count_em(str, substr)
  str.scan(/(?=#{substr})/).count
end

def substrings(str, an_array)
str_array = str.downcase.split(" ").map{ |word| word.gsub(/[^0-9A-Za-z]/, '') }

result = an_array.reduce(Hash.new(0)) do |arr, each_word|
  arr[each_word] = count_em(str_array.join(" "), each_word)
  arr
end
result.select { |key, value| value >= 1}
end

puts substrings(input, dictionary)