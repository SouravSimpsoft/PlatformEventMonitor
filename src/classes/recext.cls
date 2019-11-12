public class recext
{    
    public List<Weeksheet__c> Records{set;get;}
    public Date dt{get;set;}
    public recext() {

    }
    public void search()
    {
       List<Weeksheet__c> Records = [select Organization__c,Particular__c,Duration_hrs1__c from Weeksheet__c where Date__c=:dt];
       System.debug('conList:' +Records ); 
    }
    
}