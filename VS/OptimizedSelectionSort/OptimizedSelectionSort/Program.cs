using OptimizedSelectionSort;

internal class Program
{
    #region Private Fields

    private const int ARRAY_LENGTH = 10000;

    #endregion Private Fields

    #region Private Methods

    private static void Main(string[] args)
    {
        var random = new Random();
        for (int x = 0; x < 100; x++)
        {
            var baseArray = new int[ARRAY_LENGTH];
            var optimizedSwapArray = new int[ARRAY_LENGTH];
            var optimizedCompareArray = new int[ARRAY_LENGTH];
            var optimizedCombinedArray = new int[ARRAY_LENGTH];
            var quickArray = new int[ARRAY_LENGTH];
            var linqArray = new int[ARRAY_LENGTH];
            for (int i = 0; i < ARRAY_LENGTH; i++)
            {
                var value = random.Next(ARRAY_LENGTH);
                baseArray[i] = value;
                optimizedSwapArray[i] = value;
                optimizedCompareArray[i] = value;
                optimizedCombinedArray[i] = value;
                quickArray[i] = value;
                linqArray[i] = value;
            }
            Console.WriteLine($"{x} Initialisation finished.");

            linqArray = [.. linqArray.Order()];

            if (!IsSorted(linqArray))
            {
                throw new Exception("Linq did not sort");
            }
            Console.WriteLine("Linq finished.");

            QuickSort.Sort(quickArray);

            if (!IsSorted(quickArray))
            {
                throw new Exception("Quick did not sort");
            }
            Console.WriteLine("Quick finished.");

            BaseSelectionSort.Sort(baseArray);

            if (!IsSorted(baseArray))
            {
                throw new Exception("Base did not sort");
            }
            Console.WriteLine("Base finished.");

            OptimizedSwapSelectionSort.Sort(optimizedSwapArray);

            if (!IsSorted(optimizedSwapArray))
            {
                throw new Exception("Swap did not sort");
            }
            Console.WriteLine("Swap finished.");

            OptimizedCompareSelectionSort.Sort(optimizedCompareArray);

            if (!IsSorted(optimizedCompareArray))
            {
                throw new Exception("Compare did not sort");
            }
            Console.WriteLine("Compare finished.");

            OptimizedCombinedSelectionSort.Sort(optimizedCombinedArray);

            if (!IsSorted(optimizedCombinedArray))
            {
                throw new Exception("Combined did not sort");
            }
            Console.WriteLine("Combined finished.");
        }
    }

    #endregion Private Methods

    private static bool IsSorted(int[] array)
    {
        for (int i = 1; i < array.Length; i++)
        {
            if (array[i - 1] > array[i])
            {
                return false;
            }
        }
        return true;
    }
}