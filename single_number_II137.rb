# Given an array of integers, every element appears three times except for one,
# which appears exactly once. Find that single one.

def single_number(nums)
 nums.sort.uniq.each do |i|
  if appears_three?(nums.sort, i)
    return i
  end
end
return -1
end


def appears_three?(arr, val)
  tmp =  arr.select { |i| i == val }.size > 2
end

arr = Array.new(10) { rand(0..9) }
p single_number(arr)