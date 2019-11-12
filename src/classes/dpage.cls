public class dpage
{
    Weeksheet__c tk = new Weeksheet__c() ;
    public String data { get; set; }
    public List<Weeksheet__c> list1 {get;set;}
    public List<Candidate__c> list2 {get;set;}
    public dpage() {
           
    }

   
    
    public dpage(ApexPages.StandardController controller) {
         this.tk = (Weeksheet__c)controller.getRecord();  
         try{ 
         data = apexpages.currentPage().getCookies().get('value').getValue(); 
         }catch(Exception e){}
         /*list1 = [select Candidate__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data]; 
         tk.Candidate__c = list1[0].Candidate__c;*/
         list2 = [select Id from Candidate__c where Candidate__c.Name=:data];
         tk.Candidate__c = list2[0].Id;
    }

    
    
    public pagereference save()
    {
        
        
        insert tk;
        pagereference pr = new pagereference('/apex/wks');
        return pr;
    }
}