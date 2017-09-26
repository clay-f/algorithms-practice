# Given an array of integers that is already sorted in ascending order
#   find two numbers such that they add up to a specific target number.
# The function twoSum should return indices of the two numbers such that they add up to the target
#   where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are
#   not zero-based.


def two_sum(numbers, target)
  numbers.each_with_object([]) do |i, arr|
    numbers.any? do |j|
      arr.push(numbers.index(i), numbers.index(j)) if i + j == target
    end
  end
end


arr = [2, 7, 11, 15]

p two_sum(arr, 9).uniq
