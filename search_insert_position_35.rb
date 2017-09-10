arr = Array.new(10) { rand(0..9) }.sort.uniq


def search_insert(nums, target)
    is_find = nums.index(target)

    if (is_find)
        return is_find
    else
        nums.each do |i|
            if i > target
                tmp_position =  nums.index(i)
                return tmp_nums =  nums.insert(tmp_position, target).index(target)
            end
        end
    end
end

printf "%d\n", search_insert(arr, 5)