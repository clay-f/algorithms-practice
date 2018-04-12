public class QuickSort extends SortHelper {

    public static void sort(Comparable[] a) {
        sort(a, 0, a.length-1);
    }

    public static void sort(Comparable[] a, int lo, int hi) {
      if (hi <= lo + 7) { InsertionSort.sort(a, lo, hi); return; }
        int j = partition(a, lo, hi);
        sort(a, lo, j-1);
        sort(a, j+1, hi);
    }

    public static int partition(Comparable[] a, int lo, int hi) {
        int i = lo;
        int j = hi+1;
        Comparable v = a[lo];
        while (true) {
            while (less(a[++i], v)) if (lo >= hi) break;
            while (less(v, a[--j])) if (hi <= lo) break;
            if (i > j) break;
            exch(a, i, j);
        }
        exch(a, lo, j);
        return j;
    }
}
