public class homecookie {
    
     public string data { get; set;}
     public String ck;
     public list<Weeksheet__c> wks {get;set;}
     public homecookie(paging controller) {
     try{
        data = apexpages.currentPage().getCookies().get('value').getValue();
        wks = [select Name,Candidate__c,Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c,Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data];
        }catch(Exception e){}
     }

}