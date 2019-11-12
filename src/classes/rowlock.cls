public with sharing class rowlock 
{
    
        Id accountId = [SELECT Id, name FROM Account where name = 'test444' LIMIT 1 FOR UPDATE].Id;
    
    public void updateAccount() 
    {
        Account[] a = [SELECT Id FROM Account WHERE Id = :accountId and name = 'test444' FOR UPDATE];
        
        if(!a.isempty()) 
        {
            a[0].name = 'test333';
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
                updateAccount();
            }
        }
        system.debug(logginglevel.error, a.isempty());
    }

}