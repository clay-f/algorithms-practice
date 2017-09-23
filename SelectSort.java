public class SelectSort extends SortHelper {
    public static void sort(Comparable[] a) {
        int N = a.length;
        for (int i=0; i < N; i++) {
            int min = i;
            for (int j = i+1; j < N; j++) {
                if (less(a[j], a[min])) {
                    min = j;
                }
            }
            exch(a, i, min);
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