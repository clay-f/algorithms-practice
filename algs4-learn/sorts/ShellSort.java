public class ShellSort extends SortHelper {
    public static void sort(Comparable[] a) {
        int N = a.length;
        int h = 1;
        while (h < h/3) h = h*3 + 1;
        while (h >= 1) {
            for (int i = h; i < N; i++) {
                for (int j = i; j>=h && less(a[j], a[j-h]); j -= h) {
                    exch(a, j, j-h);
                }
            }
            h = h/3;
        }
    }

    public static void main(String[] args) {
        String[] arr = {"s", "h", "e", "l", "l", "s", "o", "r", "t", "e", "x", "a", "m", "p", "l", "e"};


        sort(arr);
        System.out.println("sorted arr value is: ");
        for (String i : arr) {
            System.out.print(i + " ");
        }
    }
}