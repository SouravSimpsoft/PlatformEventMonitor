public class login1 {
    
    public String email {get;set;}
    public String pass {get;set;}
    public List<Candidate__c> rec {set;get;}
    public login1(ApexPages.StandardController controller) {

    }
    public pagereference loging()
    {    
        
                    rec = [select Name,Email__c,Password__c,Employee_Type__c from Candidate__c where Email__c=:email];
                    
                    //if(rec[0].Password__c != pass)
                    //if(pass!='admin')
              /* if(rec[0].Employee_Type__c!='HR')
               {
                       pagereference pr = new pagereference('/apex/samplelogin');
                       return pr;
               }
               else
               {
                    if(rec[0].Password__c != pass)
                    {    
                        pagereference pr = new pagereference('/apex/login1');
                        return pr;
                        
                    }
                    else
                    {
                        pagereference pr = new pagereference('/apex/home1');
                        return pr;
                     }
                }*/
                    if(rec[0].Employee_Type__c!='CEO')
                    {
                        pagereference pr = new pagereference('/apex/login1');
                        return pr;
                    }
                    else
                    {
                        if(rec[0].Password__c != pass)
                        {    
                            pagereference pr = new pagereference('/apex/login1');
                            return pr;
                        }
                        else
                        {
                            pagereference pr = new pagereference('/apex/home1');
                            return pr;
                         }
                     }
    }
    public pagereference loging2()
    { 
        pagereference pr = new pagereference('/apex/login');
        return pr;
    }
}