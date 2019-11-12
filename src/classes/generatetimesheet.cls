public with sharing class generatetimesheet {

    public Date date1 {get;set;}
    public String org {get;set;}
    
    public List<Weeksheet__c> conts {set;get;}
    public List<Weeksheet__c> conts1 {set;get;}
    public List<Weeksheet__c> wed {set;get;}
    public List<Weeksheet__c> thurs {set;get;}
    public List<Weeksheet__c> fri {set;get;}
    public String data10 { get; set; }
    public String data { get; set; }
    public String data3 { get; set; }
    public generatetimesheet(ApexPages.StandardController controller)
    {
        try
        {
            data3 = apexpages.currentPage().getCookies().get('value').getValue();
        }
        catch(Exception e){}
    }
    
    public pagereference generate()
    {
            
            data3 = apexpages.currentPage().getCookies().get('value').getValue();
            //wks = [select Name,Candidate__c,Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c,Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data];
            //conts = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c from Weeksheet__c where Date__c=:date1];
            conts = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data3 AND Date__c=:date1];
            /*conts1 = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c from Weeksheet__c where Date__c=:date1+1];
            wed = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c from Weeksheet__c where Date__c=:date1+2];
            thurs = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c from Weeksheet__c where Date__c=:date1+3];
            fri = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c from Weeksheet__c where Date__c=:date1+4];*/
            conts1 = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data3 AND Date__c=:date1+1];
            wed = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data3 AND Date__c=:date1+2];
            thurs = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data3 AND Date__c=:date1+3];
            fri = [select Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c, Candidate__r.Name from Weeksheet__c where Candidate__r.Name=:data3 AND Date__c=:date1+4];
            pagereference pr = new pagereference('/apex/sbt');
            return pr;
    }
    public pagereference back()
    {
            pagereference pr = new pagereference('/apex/sb');
            return pr;
    }
    

}