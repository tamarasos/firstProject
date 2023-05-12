trigger AccountNet4 on Account (before update) {

    // 4. Once an Account will update
    //  then that Account will update with the total amount from All its Opportunities on the Account Level. 
    //  The account field name would be ” Recent Opportunity Amount “.

Set<Id> accIdSet= new Set<Id> ();
for(Account each: Trigger.new){
    // Account old=Trigger.oldMap.get(each.Id);
    // if(each.Recent_Opportunity_Ammount__c!=old.Recent_Opportunity_Ammount__c && each.Recent_Opportunity_Ammount__c!=null){
accIdSet.add(each.Id);
    }

if(accIdSet.isEmpty()){
    return;
}

List<AggregateResult>oppList=[select AccountId,Sum(Amount)sumAmount
from Opportunity 
 where AccountId in:accIdSet  group by AccountId];


for(AggregateResult each: oppList){
for(Account acc: Trigger.new){
  
    acc.Recent_Opportunity_Ammount__c=(Decimal)each.get('sumAmount');
}

}


