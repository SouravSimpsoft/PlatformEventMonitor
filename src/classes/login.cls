public class login 
{
    
    public String email {get;set;}
    public String pass {get;set;}
    
    public String ck;
    public login(ApexPages.StandardController controller) {}
    
    public List<Candidate__c> rec {set;get;}
    
    public pagereference loging()
    {    
        
                    rec = [select Name,Email__c,Password__c from Candidate__c where Email__c=:email];
                    
                    if(rec[0].Password__c != pass)
                    {    
                        pagereference pr = new pagereference('/apex/login');
                        return pr;
                        
                    }
                    else
                    {
                        pagereference pr = new pagereference('/apex/home');
                        ck = rec[0].Name;
                        Cookie cook = new Cookie('value', ck, null, -1, false);
                        pr.setCookies(new Cookie[] {cook});
                        return pr;
                        
                    }
                    
   }
   public pagereference loging3()
   {
       pagereference pr = new pagereference('/apex/login1');
       return pr;
   }
               
}