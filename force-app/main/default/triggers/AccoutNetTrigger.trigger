trigger AccoutNetTrigger on Account (after update) {
    // 2. Write a trigger on the Account
    //  when the Account is updated 
    //  check all opportunities related to the account.
    //   Update all Opportunities Stage to close lost if
    //  an opportunity created date is greater than 30 days from today and stage not equal to close won.
    AccountNetTriggerHandeler.afterUpdateHandeler(Trigger.new);
// Set<Id> accIdSet=new Set<Id>();
// for(Account each: Trigger.new){
// accIdSet.add(each.Id);
// }

// if(accIdSet.isEmpty()){
//     return;
// }

// List<Opportunity> oppList= [select AccountId, StageName, CreatedDate from Opportunity where AccountId!=null and AccountId in :accIdSet];

// for(Opportunity each: oppList){
//     if(each.CreatedDate<date.today()-30 && each.StageName!='Closed Won'){
//         each.StageName='Closed Won';
//     }
// }

// update oppList;



}