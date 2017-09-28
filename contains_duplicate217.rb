# Given an array of integers, find if the array contains any duplicates
# our function should return true if any value appears at least twice in the array
#   and it should return false if every element is distinct.


def contains_duplicate(nums)
  tmp_arr = nums.uniq
  result = 
    tmp_arr.map do |i|
      nums.select { |j| i == j }.size > 1
    end
  return result.any?
end

p contains_duplicate([1, 2, 3, 4, 5, 2])