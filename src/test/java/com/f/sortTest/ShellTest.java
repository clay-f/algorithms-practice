package com.f.sortTest;

import com.f.algs4.sort.Shell;
import com.f.algs4.sort.SortHelper;
import org.junit.Test;

public class ShellTest {
    @Test
    public void shellSort() {
        String[] arr = {"f", "q", "k", "g", "a", "d", "j", "z", "y", "b", "c", "h", "n", "e", "i", "w"};
        Shell.sort(arr);
        SortHelper.show(arr);
    }
}
