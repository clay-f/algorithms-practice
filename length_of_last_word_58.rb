def length_of_last_word(s)
  convert_s_to_arr = s.split(' ')
  return convert_s_to_arr.last.length
end


str = "They cannot be preceded by whitespace and are not as easy to spot as regular comments"

p length_of_last_word(str)
