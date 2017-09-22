# Given an input string, reverse the string word by word.
# Given s = "the sky is blue",
# return "blue is sky the".


def reverse_words(s)
  s.split(' ').reverse.join(' ')
end

str = "the key is blue"

p reverse_words(str)