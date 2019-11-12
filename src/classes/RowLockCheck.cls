public class RowLockCheck
{
	public static void executeB()
    {
        List<Student__c> std1 = [Select Name__c from Student__c where Name__c='Soumya'];
		//List<Student__c> std2 = [select Name__c from Student__c where Name__c='Soumya'];
        for(Student__c st :std1)
		{
			st.Name__c='Sneha';
			//st.Phone__c=123;
		}
        for(Student__c st :std1)
		{
			//st.Name__c='john';
			st.Phone__c=456;
		}
        update std1;
        update std1;
    }
}