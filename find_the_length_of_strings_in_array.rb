# Problem Statement
#   Given an array containing some strings, return an array containing the length of those strings.
# Example:
#   Given ['Ruby','Rails','C42'] the method should return [4,5,3]

def length_finder(input_array)
  input_array.each_with_object([]) do |i, arr|
    arr.push(i.size)
  end
end

arr = %w(Ruby Rails C42)
p length_finder(arr)