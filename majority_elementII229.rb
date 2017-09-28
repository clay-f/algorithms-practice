# Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times

def majority_element(nums)
  len = nums.size/3
  tmp_arr = nums.sort.uniq
  result = 
    tmp_arr.map do |i|
      nums.select { |j| j == i }.size > len
    end
  result.any?
end


p majority_element([1, 2 ,3 ,4 ,5 ,6, 1, 1])