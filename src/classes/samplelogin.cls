public class samplelogin {
    
    public String email {get;set;}
    public String pass {get;set;}
    public String ck;
    public samplelogin(ApexPages.StandardController controller) {}

    public List<Candidate__c> rec {set;get;}
    
    public pagereference loging()
    {    
        
                    rec = [select Name,Email__c,Password__c,Employee_Type__c from Candidate__c where Email__c=:email];
                    if(rec[0].Employee_Type__c!='CEO')
                    {
                        pagereference pr = new pagereference('/apex/samplelogin');
                        return pr;
                    }
                    else
                    {
                        if(rec[0].Password__c != pass)
                        {    
                            pagereference pr = new pagereference('/apex/samplelogin');
                            return pr;
                        }
                        else
                        {
                            pagereference pr = new pagereference('/apex/sampleentry');
                            ck = rec[0].Name;
                            Cookie cook = new Cookie('value', ck, null, -1, false);
                            pr.setCookies(new Cookie[] {cook});
                            return pr;
                         }
                     }
                    
   }
    
}