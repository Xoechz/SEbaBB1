namespace OptimizedSelectionSort;

public static class QuickSort
{
    public static void Sort(int[] array) => Sort(array, 0, array.Length - 1);
    public static void Sort(int[] array, int start, int end)
    {
        if (start >= end)
        {
            return;
        }
        var pivot = array[((end - start) / 2) + start];
        int i = start;
        var j = end;
        while (i <= j)
        {
            while (i <= j
                && array[i] < pivot)
            {
                i++;
            }
            while (i <= j
                && array[j] > pivot)
            {
                j--;
            }
            if (i <= j)
            {
                Swap(array, i, j);
                i++;
                j--;
            }
        }
        Sort(array, start, j);
        Sort(array, i, end);
    }
    private static void Swap(int[] array, int i, int j) =>
        (array[j], array[i]) = (array[i], array[j]);
}
