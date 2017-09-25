# Problem Statement
#   Given a sentence containing multiple words, find the frequency of a given word in that sentence.
# Construct a method named 'find_frequency' which accepts two arguments 'sentence' and 'word'
#   both of which are String objects.

def find_frequency(sentence, word)
  calc_count = 0
  sentence.split(' ').each_with_object([]) do |i, j|
    calc_count += 1 if i.downcase == word
  end
  return calc_count
end

p find_frequency('The best language in the World', 'the')
