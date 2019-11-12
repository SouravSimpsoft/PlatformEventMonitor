public class sampletable
{

    Public List<String> fstName{get;set;}
    
    public sampletable ()
    {
            
    }
    public pagereference test()
    {
            fstName= New List<String>();
            fstName.add('praveen');
            fstName.add('anil');
            fstName.add('karthik');
            fstName.add('A');
            fstName.add('B');fstName.add('C');
            fstName.add('D');fstName.add('E');
            fstName.add('F');fstName.add('G');
            PageReference pr=new PageReference('/apex/sampletable');
            return pr;
    }
}