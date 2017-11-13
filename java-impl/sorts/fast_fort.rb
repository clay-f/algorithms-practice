def exch(a, i, j)
  temp = a[i]
  a[i] = a[j]
  a[j] = temp
end

def less(a, i, j)
  return compare_to(a, i, j) < 0
end

def compare_to(a, i, j)
  if a[i] < a[j]
    return -1
  elsif a[i] > a[j]
    return 1
  else
    return 0
  end
end

def partition(a, lo, hi)
  i = lo, j = hi
  v = a[lo]

  while true
    while(less(a, [i+=1], v))
    end
    while(less(a, v, [j-=1]))
    end
    if i >= j
      break
    end
    exch(a, i, j)
  end
  exch(a, v, j)
  return j
end

def fast_sort(a, lo, hi)
  j = partition(a, lo, hi)
  fast_sort(a, lo, j-1)
  fast_sort(a, j+1, hi)
end

arr = (1..10).to_a.shuffle

for e in arr
  puts e
end

fast_sort(arr, 0, arr.length)

for e in arr
  print e
end
