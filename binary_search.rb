def search(val, arr)
    lo = 0
    hi = arr.length - 1

    while(lo <= hi)
        mid = lo + (hi - lo) / 2
        if(arr[mid] == val)
            return mid
        elsif(arr[mid] > val)
            hi = mid - 1
        elsif(arr[mid] < val)
            lo = mid + 1
        end
    end

    return -1
end

100.times { 
    a = Array.new(15) { rand(0..9) }.uniq.sort
    puts "will be search value is: #{a}"
    puts search(2, a)
    %x(sleep 1)
}