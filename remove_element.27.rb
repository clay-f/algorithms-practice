#
# Given an array and a value, remove all instances of that value in place and return the new length
# Given an array and a value, remove all instances of that value in place and return the new length

arr = Array.new(8) { rand(0..9) }
def remove_element(nums, val)
    nums.drop_while { |i| i == val }.length
end

p remove_element(arr, 3)