public class sampleupdate {
    
    Candidate__c cd = new Candidate__c();
    public String data { get; set; }
    public sampleupdate(ApexPages.StandardController controller) {
            
            this.cd = (Candidate__c)controller.getRecord();
            data = apexpages.currentPage().getCookies().get('value').getValue();
    }
    public pagereference update2()
    {
        update cd;
        pagereference pr = new pagereference('/apex/sampleprofile');
        return pr;
    }

}