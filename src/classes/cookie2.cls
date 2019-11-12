public class cookie2 {
    public string data { get; set;}
    public integer data2 { get; set;}
    public cookie2(){
    
    try{
        data = apexpages.currentPage().getCookies().get('value').getValue();
        data2 = apexpages.currentPage().getCookies().get('value').getMaxAge();
        
        
       }
       catch(Exception e)
       {}
    }
    public pagereference out()
    {
        String ck = apexpages.currentPage().getCookies().get('value').getValue();
        Pagereference pr = new Pagereference('/apex/co3');
        Cookie cook = new Cookie('value', ck, null, 0, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }
    public pagereference move()
    {
        if(data2==null)
        {
            Pagereference pr = new Pagereference('/apex/co1');
            return pr;
        }
        else
            return null;
    }
    
}