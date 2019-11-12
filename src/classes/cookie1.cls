public class cookie1 {

    

    public String name { get; set; }
    public pagereference send()
    {
        Pagereference pr = new Pagereference('/apex/co2');
        Cookie cook = new Cookie('value', name, null, -1, false);
        pr.setCookies(new Cookie[] {cook});
        return pr;
    }
}