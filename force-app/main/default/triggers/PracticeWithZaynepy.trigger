
trigger PracticeWithZaynepy on Account (before update, before delete, before insert) {



  //3 when  user created an account, write a logic to create contact with same name and associate account with contact
if(Trigger.isAfter && Trigger.isInsert       ){
  List<Contact> conList= new List<Contact>();
  for(Account each : Trigger.new) {
   Contact con= new Contact(LastName='Sample Contact', AccountId=each.Id);
   conList.add(con);
  }
    
insert conList;
}


    // 4  Requirement: When user updates account record, if user changes account name, throw an error ‘Account name once created cannot be modified’ 

if(Trigger.isBefore && Trigger.isUpdate){
for(Account each : Trigger.new) {
   Account oldAcc= Trigger.oldMap.get(each.Id);
   if(each.Name!=oldAcc.Name){
    each.Name.addError('Account name once created cannot be modified');
   }
}
    
}

// 6. Requirement: An active account should not be deleted.

if(Trigger.isBefore && Trigger.isDelete){
for(Account each : Trigger.old) {
        if(each.Active__c=='Yes'){
            each.addError('active account cannot be deleted');
        }
}
    
}




//When user updates account record,
// if billing address is changed, 
//update all its child contacts mailing address field same as account billing address.
//billingStreet

if(trigger.isAfter && trigger.isUpdate){

  Set<Id> accountsChanged = new Set<Id>();

  for(Account accNew : trigger.new){
      Account accOld =trigger.oldMap.get(accNew.Id);
      if(accNew.BillingStreet!=accOld.BillingStreet){
          accountsChanged.add(accNew.Id);
      }
  }

//with soql we will retrieve the fields of the account and child contacts

List<Account> accList = [Select Id, Billingstreet, (Select Id, MailingStreet from Contacts)
                      from Account
                      where Id in : accountsChanged ];

List<Contact> conList = new List<Contact>();

for( Account acc : accList){
  for(Contact con : acc.Contacts){
      con.MailingStreet=acc.BillingStreet;
      conList.add(con);
  }
}                       
                     
update conList;

}
                


}


    

  
    
