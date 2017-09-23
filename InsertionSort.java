public class InsertionSort extends SortHelper {
    public static void sort(Comparable[] a) {
        int n = a.length;
        for (int i = 1; i<n; i++) {
            for (int j = i; j > 0 && less(a[j], a[j-1]); j--) {
                exch(a, j, j-1);
            }
        }
    }

    public static void main(String[] args) {
        Integer[] arr = {5, 10, 9, 8, 10, 1, 80, 26, 18, 2, 99, 18};
        
        sort(arr);

        System.out.println("sorted arr value is: ");
        for (int i : arr) {
            System.out.print(i + " ");
        }
    }
}