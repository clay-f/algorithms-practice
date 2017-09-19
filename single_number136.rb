# Given an array of integers, every element appears twice except for one. Find that single one.

def single_number(nums)
   uniq_arr = nums.sort.uniq
   uniq_arr.each do |i|
    unless appears_twice?(nums.sort, i)
      return i
    end
   end
   return -1
end


def appears_twice?(arr, val)
  arr.select { |i| i == val}.size > 1
end

arr = Array.new(10) { rand(0..9) }

10.times { p single_number(arr) }