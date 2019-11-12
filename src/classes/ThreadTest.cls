public class ThreadTest 
{
    public ThreadTest(){}
    public static void sleep(Long ms)
    {
        Long timeDiff = 0;
        DateTime firstTime = System.now();
        do
        {
            timeDiff = System.now().getTime() - firstTime.getTime();
        }
        while(timeDiff <= ms);
    }
}