public class v5 {

    public Integer num1{get;set;}
    public Integer num2{get;set;}
    public Integer num3{get;set;}
    public Integer num4{get;set;}
    Addition__c tr = new Addition__c();
    public v5()
    {
        tr.Number1__c = num1;
        tr.Number1_2__c = num2;
        tr.Number2__c = num3;
        tr.Number2_2__c = num4;
    }
    
    public void add()
    {
        tr.Number1__c = num1;
        tr.Number1_2__c = num2;
        tr.Number2__c = num3;
        tr.Number2_2__c = num4;
        insert tr;
    }
}