trigger du_tg on Timesheet__c (before insert,before update)
{
    for(Timesheet__c obj:trigger.new)
    {
        
        Decimal r = Math.floor(obj.b__c-(obj.a__c*100));
        Integer myintval = Integer.valueOf(r);
        Integer rem = Math.mod(myintval,60);
        Decimal c = ((obj.b__c-(obj.a__c*100))-rem)/60;
        Decimal intToDec = decimal.valueOf(rem);
        Decimal k = intToDec/100;
        Decimal du = obj.a__c+c+k;
        obj.dur__c=du;
    }
}