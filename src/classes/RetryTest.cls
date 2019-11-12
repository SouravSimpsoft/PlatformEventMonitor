public class RetryTest
{
    public static integer count=1;
    public static void modify()
    {
    	List<Student__c> stdnt = [Select Name__c,Phone__c,comment__c From Student__c Where Name__c='Soumya' FOR UPDATE];
		//System.debug(stdnt);
		for(Student__c st :stdnt)
		{
			st.Name__c='john';
			st.Phone__c=123;
            st.comment__c = 'comments for testing';
		}
		//System.debug(stdnt);
        try
        {
			update stdnt;
        }
        catch(DMLException e)
        {
            count=count+1;
            if(e.getMessage().contains('UNABLE_TO_LOCK_ROW'))//UNABLE_TO_LOCK_ROW  CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY
            {
                if(count<5)
                {
                    System.debug(count);
                	modify();
                }
                else
                {
                    System.debug(e);
                }
            }
            else
            {
                 System.debug(e);
            }
        }
    }
}