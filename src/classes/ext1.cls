public class ext1
{
    public ext1(ApexPages.StandardController cont){}
    List<Employee__c> emp =[select Name,First_Name__c,Last_Name__c from Employee__c];
    public List<Employee__c> getemp()
    {
        return emp;
    }
}