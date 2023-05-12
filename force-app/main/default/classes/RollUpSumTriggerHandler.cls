public with sharing class RollUpSumTriggerHandler {
  //when new contact is created or updated, update Number of Contacts field on Account
public static void handleAfterInsertAfterUndelete(List<Contact>conLst){
    Set<Id> AccId= new Set<Id>();
for(Contact each:conLst){
    if(each.AccountId!=null){
        AccId.add(each.AccountId);
    }
}
if(AccId.isEmpty()){
    return;
}

//List<Account> accList= [select Accountid from from contact where AccountId in:AccId ];

AggregateResult[] result=[select count(Id)numberOf
from contact where AccountId=:AccId
group by AccountId 
];
List<Account> accList= [select id from Account where id in:AccId ];

Map<Id,Account> accMap=new Map<Id,Account>(accList);
List<Account> accToUpdate= new List<Account>();
for(Account each:accList){
    for(AggregateResult ar: result){
    each.Number_of_Contacts__c=(Integer)ar.get('numberOf');
    accToUpdate.add(each);
}
}
if(!accToUpdate.isEmpty()){
update accToUpdate;
}
}


public static void handleAfterDelete(List<Contact>conLst){


Set<Id> AccId= new Set<Id>();
for(Contact each:conLst){
   
        AccId.add(each.AccountId);
    }

if(AccId.isEmpty()){
    return;
}

//List<Account> accList= [select Accountid from from contact where AccountId in:AccId ];

AggregateResult[] result=[select count(Id)numberOf
from contact where AccountId=:AccId
group by AccountId 
];
List<Account> accList= [select id from Account where id in:AccId ];

Map<Id,Account> accMap=new Map<Id,Account>(accList);
List<Account> accToUpdate= new List<Account>();
for(Account each:accList){
    for(AggregateResult ar: result){
    each.Number_of_Contacts__c=(Integer)ar.get('numberOf');
    accToUpdate.add(each);
}
}

update accToUpdate;
}
}


  //when a contact is deleted , update Number of Contacts field on Account


    

Set<Id> accId= new Set<Id> ();
for(Contact each:Trigger.old){

}


  