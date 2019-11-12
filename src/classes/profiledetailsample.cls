public class profiledetailsample {

        public Candidate__c cd {get;set;}
        public profiledetailsample()
        {
                cd = [select Id,Name,Email__c,Gender__c from Candidate__c where Id=:'a080o00002noxFP'];
        }
}