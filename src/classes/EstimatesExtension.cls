public class EstimatesExtension {
    public WrapperEstimate wrapper {get; set;}
    public List<WrapperEstimate> listWrappers {get; set;}

    // here we init first block
    public EstimatesExtension(ApexPages.StandardController controller) {
        listWrappers = new List<WrapperEstimate>();
        wrapper = new WrapperEstimate();
        listWrappers.add(wrapper);
    }
    public class WrapperEstimate {
        public Estimates__c estimate {get; set;} // our target Estimate inside Wrapper
        public WrapperEstimate() {
            estimate = new Estimates__c(); // every Wrapper have Estimate
        }
    }

    public PageReference addEstimate() { // called from vf
        WrapperEstimate wrapper = new WrapperEstimate();
        listWrappers.add(wrapper); // vf render this list with new added wrapper
        return null;
    }

    public PageReference save() { // override
        List<Estimates__c> listEstimates = new List<Estimates__c>();
        for (WrapperEstimate wrapper : listWrappers) { // preparing new list of Estimates for insert
            listEstimates.add(wrapper.estimate);
        }
        insert listEstimates;
        return new PageReference('/' + Schema.getGlobalDescribe().get('Estimates__c').getDescribe().getKeyPrefix() + '/o'); // view all Estimates
    }
}