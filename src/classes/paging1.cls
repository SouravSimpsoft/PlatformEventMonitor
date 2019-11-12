public class paging1 {
    
    public String data {get;set;}  
    public List<Candidate__c> prf {get;set;}
    public paging1() {
        
        
    }


    public paging1(ApexPages.StandardController controller) {
           
            
    }


   
    public PageReference expence() {
        pagereference pr = new pagereference('/apex/samplevoucher');
        return pr;
    }


    public PageReference timesheet() {
        pagereference pr = new pagereference('/apex/addtimesheet');
        return pr;
    }


    public PageReference profile() {
        pagereference pr = new pagereference('/apex/profile1');
        return pr;
    }


    public PageReference home() {
        pagereference pr = new pagereference('/apex/home1');
        return pr;
    }

}