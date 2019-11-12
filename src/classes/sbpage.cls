public class sbpage {
    
    private ApexPages.StandardController stdCtrl {get; set;}
    Weeksheet__c tk = new Weeksheet__c();
    public List<Weeksheet__c> conts {set;get;}
    public string dt {set;get;}
    public sbpage(ApexPages.StandardController std)
    {
            stdCtrl=std;
            spage();
    }
    public void spage()
    {
        conts = [select Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c from Weeksheet__c where Organization__c=:'Simpsoft'];
    }
    
}