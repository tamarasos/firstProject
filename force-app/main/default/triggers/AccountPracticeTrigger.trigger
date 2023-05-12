trigger AccountPracticeTrigger on Account (before insert, before update) {
//Creates the number of contacts which are equal to the number which we will enter 
//in the Number of Locations field on the Account Object.

//Create Custom field called “Number of Locations” on the Account Object 
//(Data Type=Number)

List<Contact> emptyLst= new List<Contact> ();
for(Account each : Trigger.new) {
  if(each.Number_of_Locations__c>0){
for(Integer i=1; i<=each.Number_of_Locations__c; i++){
Contact c1= new Contact();
c1.AccountId=each.Id;
c1.LastName='Contact Class'+i;
emptyLst.add(c1);
}

  }
  insert emptyLst;
}
    
//Create “Sales Rep” field in UI with data type (text) on the Account object. 
//While we create or update account records, account owners name will be systematically 
//inserted into the sales representative field.


if(Trigger.isBefore && Trigger.isInsert){
    
    trigger TestTrigger on Account (before insert, before update) {

        Set<Id> ids = new Set<Id>();
    
    
        for(Account each : trigger.new){
            ids.add(each.OwnerId);
    
        }
    
        //owner is a user object
        //retrieve the fields from user object
    
        List<User> userList = [Select name from user where id in :ids ] ;
    
    
    
     /*   for(Account each : trigger.new){
            for(User users : userList){
                if(each.OwnerId==users.Id){
                    each.sales_rep__c=users.Name;
                }
            }
        }
    */
    
    Map<Id,User> usermap = new Map<Id,User>(userList);
    for(Account each : trigger.new){
        each.sales_rep__c=usermap.get(each.OwnerId).Name;
    }
    
    
    
    }

}





}


//Creates the number of contacts which are equal to the number which we will enter 
//in the Number of Locations field on the Account Object.


Set<Id> accIds= new Set<Id>();
