# Given a string s consists of upper/lower-case alphabets and empty space characters ' '
# return the length of last word in the string.
# If the last word does not exist, return 0.

def length_of_last_word(s)
  return false if s == nil || s.strip.empty?
  convert_s_to_arr = s.split(' ')
  return convert_s_to_arr.last.length
end

str = "They cannot be preceded by whitespace and are not as easy to spot as regular comments"

p length_of_last_word(' ')
