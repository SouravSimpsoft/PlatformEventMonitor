public class ext2
{
    public Employee__c cds{get; set;}
    public Employee__c setcds(Employee__c op){
        this.cds=op;
        return cds;
    }
	public ext2(ApexPages.StandardController cont)
    {
		cds=new Employee__c();
    }
    public pagereference  save()
	{
        Employee__c cd = new Employee__c();
		cd.First_Name__c=cds.First_Name__c;
		cd.Last_Name__c=cds.Last_Name__c;
		insert cd;
      	PageReference pr=new PageReference('https://c.ap8.visual.force.com/apex/page1');
      	return pr;
  
	}
}