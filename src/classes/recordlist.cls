public class recordlist {

    public list<Weeksheet__c> wks {get;set;}
    public recordlist() {
        wks = [select Name,Candidate__c,Date__c,Organization__c,Particular__c,Duration_hrs1__c,Organization2__c,Particular2__c,Duration_hrs2__c,Total_Hours_Dailly__c from Weeksheet__c];
    }

}