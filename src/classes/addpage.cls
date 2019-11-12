public class addpage {
    
    public String data { get; set; }
    public list<Weeksheet__c> wks {get;set;}
    public addpage(paging controller) {
            
        try{ 
        data = apexpages.currentPage().getCookies().get('value').getValue();
        wks = [select Name,Candidate__c,Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c,Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data];
        }catch(Exception e){}
    }

    
    
    
    public addpage(ApexPages.StandardController controller) {
    }
    public pagereference  add()
    {
        String ck = apexpages.currentPage().getCookies().get('value').getValue();
        PageReference pr=new PageReference('/apex/wk');
        Cookie cook = new Cookie('value', ck, null, -1, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
  
    }
    public pagereference  gen()
    {
        String ck = apexpages.currentPage().getCookies().get('value').getValue();
        PageReference pr=new PageReference('/apex/sb');
        Cookie cook = new Cookie('value', ck, null, -1, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }

}