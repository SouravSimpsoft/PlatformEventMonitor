public class timecookie {
    
    public String data { get; set; }
    public timecookie(ApexPages.StandardController controller) {

    }
    public timecookie(paging controller) {
            
        try{ 
        data = apexpages.currentPage().getCookies().get('value').getValue(); 
        }catch(Exception e){}
    }
}