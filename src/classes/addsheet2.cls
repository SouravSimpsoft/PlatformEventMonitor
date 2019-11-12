public class addsheet2 {
    
    Weeksheet__c tk = new Weeksheet__c() ;
    public addsheet2() {
           
    }
    public addsheet2(ApexPages.StandardController controller) {
        this.tk = (Weeksheet__c)controller.getRecord();
    }
     public pagereference save()
    {
        insert tk;
        pagereference pr = new pagereference('/apex/addtimesheet');
        return pr;
    }
}