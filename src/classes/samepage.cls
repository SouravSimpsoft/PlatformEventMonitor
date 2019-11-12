public class samepage
{

    public samepage() {

    }

    public Weeksheet__c wk {get;set;}
    public Weeksheet__c setwk(Weeksheet__c op){
        this.wk=op;
        return wk;
    }
    public samepage(ApexPages.StandardController controller) {
            wk=new Weeksheet__c();
    }

    
    
    public pagereference save()
    {
        Weeksheet__c tk = new Weeksheet__c();
        tk.Date__c=wk.Date__c;
        tk.Duration_hrs1__c=wk.Duration_hrs1__c;
        tk.Duration_hrs2__c=wk.Duration_hrs2__c;
        tk.Organization__c=wk.Organization__c;
        tk.Organization2__c=wk.Organization2__c;
        tk.Particular__c=wk.Particular__c;
        tk.Particular2__c=wk.Particular2__c;
        insert tk;
        pagereference pr = new pagereference('https://c.ap8.visual.force.com/apex/wks');
        return pr;
    }
}