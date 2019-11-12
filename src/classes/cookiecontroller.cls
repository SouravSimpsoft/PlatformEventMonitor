public class cookiecontroller
{
    public String cookiedata {get;set;}
    public cookiecontroller(ApexPages.StandardController controller)
    {
        cookiedata = apexpages.currentPage().getCookies().get('value').getValue();
    }

}