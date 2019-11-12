public class TestCI
{
	
    public TestCI(){}
    public static void TestCI1()
    {
        Student__c stdnt = new Student__c(Phone__c=123,Comment__c='Comments for Testing');
        insert stdnt;
    }
    //update stdnt;
}