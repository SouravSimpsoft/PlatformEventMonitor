public class profile1 {

    public profile1(ApexPages.StandardController controller) {

    }

    
    public list<Candidate__c> emp {get;set;}
    public profile1(paging1 controller) {
            emp = [select Name,Email__c,Gender__c,Employee_Type__c,First_Name__c,Last_Name__c,Payroll_Entry__c,Personal_ID__c from Candidate__c];
    }

}