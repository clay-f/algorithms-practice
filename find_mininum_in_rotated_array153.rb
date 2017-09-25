# Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
#   Find the minimum element.
#     The array may not duplicates.

def find_min(nums)
  nums.rotate(rand(1..10)).min
end


arr = Array.new(10) { rand(1..100) }.sort.uniq

printf "arr values is: #{arr}\n"
puts "min value is: #{find_min(arr)}"