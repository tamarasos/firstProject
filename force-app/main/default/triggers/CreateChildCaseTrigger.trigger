trigger CreateChildCaseTrigger on Case (after insert) {

 CreateChildCaseHandler.handleAfterInsert(Trigger.new);
//    Set<Id> caseSet=new Set<Id>();
//    for(Case each: Trigger.new){
//        if(each.Priority=='High'){
//            caseSet.add(each.Id);
//        }
//    }
//    List<Case> caseList=[select Priority, ParentId from case where Id in : caseSet];
//    List<Case> toInsert=new List<Case>();
   
//    for(Case each:caseList){
//    toInsert.add(new Case(Priority='High', ParentId=each.Id));
//    }
//    insert toInsert;
   
   }

