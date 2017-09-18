# Follow up for "Remove Duplicates":
# What if duplicates are allowed at most twice?
# E.G
# Given sorted array nums = [1,1,1,2,2,3],
# Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3.
# It doesn't matter what you leave beyond the new length.

def remove_duplicates(nums)
  record_leng = 0
  uniq_arr = nums.uniq
  uniq_arr.each do |i|
    record_leng += 1 if count_great_two?(nums, i)
  end
  return (record_leng + uniq_arr.size)
end

def count_great_two?(arr, val)
  arr.map { |i| i == val }.select { |j| j == true }.size > 1
end

arr = [1, 1, 1, 2, 2, 3]

p remove_duplicates(arr)