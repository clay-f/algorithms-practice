# Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
# Write a function to determine if a given target is in the array.
# The array may contain duplicates.

def search(nums, target)
  nums.sort.uniq.rotate(rand(0..9))
    .include?(target)
end


p search((0..7).to_a, 1)