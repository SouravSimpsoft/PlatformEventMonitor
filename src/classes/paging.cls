public class paging {

    public String data { get; set; }
    public integer data2 { get; set;}
    public String data3 { get; set; }
    public PageReference next() {
        String ck = apexpages.currentPage().getCookies().get('value').getValue(); 
        PageReference pr=new PageReference('/apex/wks');
        Cookie cook = new Cookie('value', ck, null, -1, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }


    
    public String ck;
    public list<Weeksheet__c> wks {get;set;}
   
   
    public paging(){
        
        //data = apexpages.currentPage().getCookies().get('value').getValue();
        try{
        data3 = apexpages.currentPage().getCookies().get('value').getValue();
        data2 = apexpages.currentPage().getCookies().get('value').getMaxAge();
       }
       catch(Exception e)
       {}
    }

    public paging(ApexPages.StandardController controller) {
            try{
        data3 = apexpages.currentPage().getCookies().get('value').getValue();
        data2 = apexpages.currentPage().getCookies().get('value').getMaxAge();
       }
       catch(Exception e)
       {}
    }


    


    public paging(ApexPages.StandardSetController controller) {

    }


    public PageReference home() {
        PageReference pr=new PageReference('/apex/home');
        return pr;
    }


    public PageReference expence() {
        PageReference pr=new PageReference('/apex/v4');
        return pr;
    }
    public PageReference logout() {
        return null;
    }


    public PageReference timesheet() {
       
        
        String ck = apexpages.currentPage().getCookies().get('value').getValue();
        Pagereference pr = new Pagereference('/apex/wks');
        Cookie cook = new Cookie('value', ck, null, -1, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }


    public PageReference profile() {
        String ck = apexpages.currentPage().getCookies().get('value').getValue();
        PageReference pr=new PageReference('/apex/sampleprofile');
        Cookie cook = new Cookie('value', ck, null, -1, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }
    public pagereference out()
    {
        String ck = apexpages.currentPage().getCookies().get('value').getValue();
        Pagereference pr = new Pagereference('/apex/logoutpage');
        Cookie cook = new Cookie('value', ck, null, 0, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }
    public pagereference checklogout()
    {
        if(data2==null)
        {
            Pagereference pr = new Pagereference('/apex/login');
            return pr;
        }
        else
            return null;
    }

}