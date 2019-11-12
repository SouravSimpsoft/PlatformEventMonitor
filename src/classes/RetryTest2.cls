public class RetryTest2 
{
	public static void test3()
    {
    	Account[] a = [SELECT Id FROM Account WHERE name = 'test333'];
		a[0].name = 'test555';
		//ThreadTest.sleep(15000);
		for(integer i = 0; i < 999999999; i++) 
        {
            // Do nothing, haha!
        }
		try
		{
    		update a[0];
		}
		catch(Exception e)
		{
    		//System.debug(e);
            if(e.getMessage().contains('UNABLE_TO_LOCK_ROW'))//UNABLE_TO_LOCK_ROW  CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY
            {    
                    //System.debug(count);
                	test3();
            }   
            else
            {
                    
            }
         }
	}

}