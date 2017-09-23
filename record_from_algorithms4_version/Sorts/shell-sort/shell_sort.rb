def less(a, i, j)
  return compare_to(a[i], a[j]) < 0
end

def compare_to(a, b)
  if a > b
    return 1
  elsif a < b
    return -1
  else
    return 0
  end
end

def exch(a, i, j)
  temp = a[i]
  a[i] = a[j]
  a[j] = temp
end

def shell(a)
  n = a.length
  h = 1
  h = (h*3) + 1 while(h < n/3)
  while h >= 1
    i = h
    while i < n
      j = i
      while j >= h && less(a, j, j-h)
        exch(a, j, j-h)
        j = j - h
      end
      i = i + 1
    end
    h = h/3
  end
end

arr = (1..10).to_a.shuffle

for e in arr
  puts e
end

shell(arr)

for e in arr
  print e
end
