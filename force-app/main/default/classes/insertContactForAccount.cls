public  class insertContactForAccount implements Queueable {
   Contact con; 
   String industry;

   public insertContactForAccount( String industry, Contact con){

    this.industry=industry;
    this.con=con;

   }

    public void execute(QueueableContext context) {

List<Account> accList=[select id, Industry from account where Industry =:industry];

List<Contact> conList= new List<Contact>();

for(Account each: accList){
    if(each.Industry=='Media'){
        Contact newContact= this.con.clone();
        newContact.AccountId=each.Id;
        conList.add(newContact);
    }
}
if(!conList.isEmpty()){
    insert conList;
}
    }
}