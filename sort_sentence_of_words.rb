# Problem Statement
#   Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order,
#     by length. Let's not treat the punctuation marks any different than other characters and assume that 
#       we will always have single space to separate the words.


def sort_string(str)
  tmp_leng = str.split(' ').map { |i| i.size }.sort
  tmp_leng.each_with_object([]) do |i, arr|
    arr.push(get_arr_element(i, str.split(' ')))
  end
end

def get_arr_element(val, arr)
  arr.each do |i|
    return i if val == i.size
  end
end

sentence = "Sort words in a sentence"

p sort_string(sentence)