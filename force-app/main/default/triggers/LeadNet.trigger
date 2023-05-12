trigger LeadNet on Lead (before insert, before update) {






if(Trigger.isBefore && Trigger.isInsert || Trigger.isUpdate){

    //when lead is created or updated check if email of lead is there in existing contact 
//if it is throw error

Set<Id> leadIdSet=new Set<Id>();
for(Lead each:Trigger.new){
    if(each.email!=null){
        leadIdSet.add(each.Id);
    }
}

List<Contact> conList= [select id, Email
from Contact 
where Email!=null];

List<String> emailList= new List<String> ();

for(Contact each: conList){
    emailList.add(each.Email);
}

// Map<Id, Contact> conMap= new Map<Id,Contact>(conList);


for(Lead each:Trigger.new){

  if(emailList.contains(each.Email)){
    each.addError('duplicate');
  }
}















    
}






}