require 'pry'

def max_product(nums)
  tmp_arr = nums - [nums.last]
  tmp_leng = tmp_arr.size - 1

  max_val = 0

  val = 0
  while val < tmp_leng
    comp_val = tmp_arr[val] * nums[val+1]
    max_val = comp_val if comp_val > max_val
    val+=1
  end

  return max_val
end


arr = [2, 3, -2, 4]
p max_product(arr)