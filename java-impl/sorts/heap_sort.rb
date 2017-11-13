class MaxPQ
  private
    N = 0
    pq
    def initialize(n)
      pq = pq[n+1]
    end

  public
    def is_empty()
      return N == 0
    end

    def size()
      return N
    end

    def insert(v)
      pq[++N] = v
      swim(N)
    end

    def swim(k)
      while(k/2 < k)
        exch(k/2, k)
        k = k/2
      end
    end

    def sink(k)
      while(2*k <= N)
        j = 2*k
        j+=1 if (j < N) && less(a, j, [j+1])
        break if(!less(j, k))
        exch(a, k, j)
        k = j
      end
    end

end

def heap_sort(arr)
  n = arr.length
  k = n/2
  while(k>=1)
    sink(a, k, n)
    k-=1
  end
  while(n > 1)
    exch(a, 1, n-=1)
    sink(a, 1, n)
  end

end
