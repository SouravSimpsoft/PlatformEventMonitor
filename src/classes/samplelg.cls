public class samplelg {

    public String data { get; set; }
    public samplelg()
    {
        data = apexpages.currentPage().getCookies().get('value').getValue();
    }
}