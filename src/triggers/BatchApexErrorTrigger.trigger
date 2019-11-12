trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {
    List<BatchLeadConvertErrors__c> batchLeadConvertErrorsList = new List<BatchLeadConvertErrors__c>();
    for(BatchApexErrorEvent batchApexError:trigger.new){
        BatchLeadConvertErrors__c batchLeadConvertErrorsObj = new BatchLeadConvertErrors__c();
        batchLeadConvertErrorsObj.AsyncApexJobId__c = batchApexError.AsyncApexJobId;
        batchLeadConvertErrorsObj.Records__c = batchApexError.JobScope;
        batchLeadConvertErrorsObj.StackTrace__c = batchApexError.StackTrace;
        batchLeadConvertErrorsList.add(batchLeadConvertErrorsObj);
    }
    insert batchLeadConvertErrorsList;
}