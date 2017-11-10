# Given a set of distinct integers, nums, return all possible subsets (the power set).
def subsets(arr, n)
  return arr if arr.size == (n+1)
  tmp_arr = combination_val(arr, n)
  tmp_arr.push(subsets(arr, n+=1))
end

def combination_val(arr, n)
  tmp_val = arr[0..n].last
  tmp_arr = arr - arr[0..n]
  tmp_arr = tmp_arr.map { |i| [tmp_val, i] }
end

arr = [1, 2, 3]
p subsets(arr, 0).push([])