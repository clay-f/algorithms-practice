#  Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
#   Find the minimum element.
#     The array may contain duplicates.

def find_min(nums)
  nums.rotate(rand(1..100)).min
end


arr = Array.new(100) { rand(1..100) }.sort

puts "origin arr is: #{arr}"

p find_min(arr)