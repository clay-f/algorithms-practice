# Using the Ruby language, have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. 
#  If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume 
#    sen will not be empty. 
def longest_word(sen)
  tmp_arr = sen.split(" ")
  tmp_longest = 0
  tmp_arr.each do |i|
    tmp_longest = i.size if i.size > tmp_longest
  end

  tmp_arr.select { |i| i.size == tmp_longest }.first
end

puts longest_word($stdin.gets)