$arr = [0, 1, 2, 3, 4, 5, 6, 7]
$rand_num = rand(0..8)
def search(nums, target)
    nums = (nums.sort.rotate($rand_num))
    return nums.index(target) if nums.include?(target)

    return -1
end


puts search($arr, 5)
