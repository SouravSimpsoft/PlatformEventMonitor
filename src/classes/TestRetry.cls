public class TestRetry
{
    
    public static integer i =1;
    public static void EntryTest()
    {  
        try
        {
            Contact ct = new Contact();
            insert ct;
        }
        catch(DMLException e)
        {
            System.debug(e);
        }
        finally
        {
            if(i<3)
            {
                i=i+1;
                TestSleep1.test1();
               ThreadTest.sleep(5000);
                TestSleep2.test2();
               // ThreadTest.sleep(500);
                TestRetry.EntryTest();  
            }
            
        }
    }
}