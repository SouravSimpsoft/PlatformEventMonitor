public class cookie3 {
    public String data { get; set; }
    
    public cookie3()
    {
      try{  
            data = apexpages.currentPage().getCookies().get('value').getValue();
        }
        catch(Exception e){}
    }
}