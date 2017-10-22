// rotate array by given one value
// [1, 2, 3, 4, 5] => [1, 1, 2, 3, 4]
// => [5, 1, 2, 3, 4] => [4, 5, 1, 2, 3]

public class RotateArray {
	public static void main(String[] args) {
		int[] arr = {1, 2, 3, 4, 5};
		int[] tmp_arr = rotateRight(arr, 4);
		for (int i : tmp_arr) {
			System.out.print(i + " ");
		}
	}

	public static int[] rotateRight(int[] arr, int val) {
		if(val == 0) {
			return arr;
		} else {
			return rotateRight(moveRight(arr), --val);
		}
	}

	public static int[] moveRight(int[] arr) {
		int last = arr[arr.length-1];

		for (int i=arr.length-1; i>0; i--) {
			arr[i] = arr[i-1];
		}
		arr[0] = last;
		return arr;
	}
}
