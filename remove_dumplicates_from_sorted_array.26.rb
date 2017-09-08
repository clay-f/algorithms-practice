arr = Array.new(100) { rand(0..100) }

def remove_dumplicates(nums)
    nums.uniq.length
end

puts remove_dumplicates(arr)
