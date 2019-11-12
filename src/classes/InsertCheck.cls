public class InsertCheck
{
    public static void insertionCheck()
    {
    	List<Student__c> std = new List<Student__c>();
		Student__c st = new Student__c();
		
    		st.Name__c = 'Rose';
    		st.Phone__c = 999;
            st.comment__c = 'Comment for testing';
    		std.add(st);
		insert std;
	}
}