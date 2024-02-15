public class Program
{
    public static void Main(string[] args)
    {
        var random = new Random();
        var sum = 0.0;

        for (int i = 1; i < 1000000; i++)
        {
            var randomValue = random.Next(1, 3);
            sum += randomValue;
            Console.WriteLine(sum / i);
        }
    }
}