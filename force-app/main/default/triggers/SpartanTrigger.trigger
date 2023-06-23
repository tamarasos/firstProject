trigger SpartanTrigger on Spartan__c (after insert){
 
    SpartanTriggerHandler.handleAfterInsert(Trigger.new);   

}

// if(trigger.isAfter && Trigger.isDelete){
//     SpartanTriggerHandler.deleteSpartan(Trigger.old);
// }


