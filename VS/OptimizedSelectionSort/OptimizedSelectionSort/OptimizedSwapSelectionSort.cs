namespace OptimizedSelectionSort;

public static class OptimizedSwapSelectionSort
{
    #region Public Methods

    public static void Sort(int[] array)
    {
        for (int i = 0; i < array.Length - 1; i++)
        {
            var minIndex = i;
            var minValue = array[i];
            for (int j = i + 1; j < array.Length; j++)
            {
                if (array[j] < minValue)
                {
                    minIndex = j;
                    minValue = array[j];
                }
            }
            if (i != minIndex)
            {
                Swap(array, i, minIndex);
            }
        }
    }

    #endregion Public Methods

    #region Private Methods

    private static void Swap(int[] array, int i, int j) =>
        (array[j], array[i]) = (array[i], array[j]);

    #endregion Private Methods
}