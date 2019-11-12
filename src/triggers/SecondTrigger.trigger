trigger SecondTrigger on Student__c (after insert,after update)
{
    
    ThreadTest.sleep(5000);
    List<Student__c> std= [SELECT Name__c,Phone__c FROM Student__c FOR UPDATE];
    for(Student__c st : Trigger.New)
    {
        if(st.Name__c=='Rose')
        {
            //st.Name__c='Jack';
            delete st;
        }
    }
    //delete std;
}