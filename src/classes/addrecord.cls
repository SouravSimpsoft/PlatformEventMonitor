public class addrecord {
    Weeksheet__c tk = new Weeksheet__c() ;
    public String data { get; set; }
    public String hold;
    public List<Weeksheet__c> list1 {get;set;}
    public List<Candidate__c> list2 {get;set;}
    public addrecord(ApexPages.StandardController controller) {
      try{
        data = apexpages.currentPage().getCookies().get('value').getValue();
        }catch(Exception e){lout();}
        this.tk = (Weeksheet__c)controller.getRecord();
        /*list1 = [select Candidate__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data];
        try{tk.Candidate__c = list1[0].Candidate__c;}catch(Exception e){}*/
        
        list2 = [select Id from Candidate__c where Candidate__c.Name=:data];
        tk.Candidate__c = list2[0].Id;
    }
    public pagereference save()
    {
        
        
        insert tk;
        pagereference pr = new pagereference('/apex/sampleentry');
        return pr;
    }
     public pagereference lout()
    {
        
        Cookie cook = new Cookie('value', hold, null, 0, false);
        pagereference pr = new pagereference('/apex/sampleentry');
        
        pr.setCookies(new Cookie[] {cook});
        
        return pr;
    }
     
}