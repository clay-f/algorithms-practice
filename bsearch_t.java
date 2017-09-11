public class Bsearch_t<Item> {
    public static int search(<Item> val, <Item>[] arr ) {
      int lo = -1
       int hi = arr.length() - 1

        while(lo <= hi) {
            int mid = (lo + hi) / 2.round;

            if(arr[mid] == val) {
                return mid;
            }
            else if (arr[mid] < val) {
                lo = mid + 1;
            }
            else if (arr[mid] > val) {
                hi = mid - 1;
            }
        }

        return -1
    }
}