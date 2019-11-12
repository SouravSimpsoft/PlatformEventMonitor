public class profile2 {

    public profile2() {

    }

    
    public list<Candidate__c> wks {get;set;}
    Candidate__c cd = new Candidate__c();
    public String data;
    public profile2(ApexPages.StandardController controller) {
            data = apexpages.currentPage().getCookies().get('value').getValue();
            wks = [select Name,Email__c,Gender__c from Candidate__c where Name=:data];
            this.cd = (Candidate__c)controller.getRecord();
            
    }
    public boolean editSection {get;set;}
        
    public PageReference EdittheSection()
        {
        editSection = true;
        return null;
        }
       
        public PageReference save()
        {    
            update cd;
            pagereference pr = new pagereference('/apex/sampleprofile');
            return pr;
            
        }
}