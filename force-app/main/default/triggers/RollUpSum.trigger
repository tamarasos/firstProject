trigger RollUpSum on Contact (after insert, after undelete) {

if(Trigger.isAfter && Trigger.isInsert || Trigger.isUndelete){
    RollUpSumTriggerHandler.handleAfterInsertAfterUndelete(Trigger.new);
// Set<Id> AccId= new Set<Id>();
// for(Contact each:Trigger.new){
//     if(each.AccountId!=null){
//         AccId.add(each.AccountId);
//     }
// }
// if(AccId.isEmpty()){
//     return;
// }

// //List<Account> accList= [select Accountid from from contact where AccountId in:AccId ];

// AggregateResult[] result=[select count(Id)numberOf
// from contact where AccountId=:AccId
// group by AccountId 
// ];


// Map<Id,Account> accMap=new Map<Id,Account>(accList);
// List<Account> accToUpdate= new List<Account>();
// for(Account each:accList){
//     for(AggregateResult ar: result){
//     each.Number_of_Contacts__c=(Integer)ar.get('numberOf');
//     accToUpdate.add(each);
// }
// }

// update accToUpdate;

}
 if(Trigger.isAfter && Trigger.isDelete){
RollUpSumTriggerHandler.handleAfterDelete(Trigger.old);



    

//     Set<Id> AccId= new Set<Id>();
//     for(Contact each:Trigger.old){
       
//             AccId.add(each.AccountId);
//         }
    
//     if(AccId.isEmpty()){
//         return;
//     }
    
//     //List<Account> accList= [select Accountid from from contact where AccountId in:AccId ];
    
//     AggregateResult[] result=[select count(Id)numberOf
//     from contact where AccountId=:AccId
//     group by AccountId 
//     ];
//     List<Account> accList= [select id from Account where id in:AccId ];
    
//     Map<Id,Account> accMap=new Map<Id,Account>(accList);
//     List<Account> accToUpdate= new List<Account>();
//     for(Account each:accList){
//         for(AggregateResult ar: result){
//         each.Number_of_Contacts__c=(Integer)ar.get('numberOf');
//         accToUpdate.add(each);
//     }
//     }
    
//     update accToUpdate;
//     }

}
}

/*JAVA
trigger RollupAccount on Contact (after insert, after update, after delete, after undelete) {
    set<id> clsId= new set<id>();
    if(Trigger.isInsert||Trigger.isUndelete){
        if(Trigger.new !=null){
            for(Contact std : Trigger.new){
                if(std.AccountId !=null){
                    clsId.add(std.AccountId);
                }
            }
        }
    }
    if(Trigger.isDelete){
        if(Trigger.old!=null){
            for(Contact std : Trigger.old){
                clsId.add(std.AccountId);
            }
        }
    }
    
    if(Trigger.isUpdate){
        for(Contact std : Trigger.new){
            if(std.AccountId != Trigger.oldMap.get(std.id).AccountId){
                if(Trigger.oldMap.get(std.id).AccountId !=null){
                    clsId.add(Trigger.oldMap.get(std.id).AccountId);
                }
                if(std.AccountId!=null){
                    clsId.add(std.AccountId);
                }
            }
        }
    }
    system.debug('clsId>'+clsId);
    Map<String,Integer> mapOfAccIdAndNoOfStd = new Map<String,Integer>();
    List<AggregateResult> totalStudents = [Select count(Id), AccountId from Contact where AccountId=:clsId Group By AccountID];
    if(totalStudents.size()>0){
        for(AggregateResult a: totalStudents){
            String clsIds = (String)a.get('AccountId');
            Integer totalStd = totalStudents.size();
            mapOfAccIdAndNoOfStd.put(clsIds,totalStd);
        }
    }
    List<Account> claListToUpdate = [SELECT Id, Number_of_Contacts__c FROM Account Where Id=:clsId];
    
    if(claListToUpdate.size()>0){
        for(Account c : claListToUpdate){
            if(mapOfAccIdAndNoOfStd.containsKey(c.Id)){
                c.Number_of_Contacts__c = mapOfAccIdAndNoOfStd.get(c.Id);
            }
            else{
                c.Number_of_Contacts__c =null;
            }
        }
    }
    
    if(claListToUpdate.size()>0){
        update claListToUpdate;
    }
}
*/