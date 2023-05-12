
@isTest
public  class insertContactForAccountTest {
 

 @isTest
public static void createContact(){


    List<Account> accList= new List<Account> ();
    for(Integer i=1; i<=10; i++){
        accList.add(new Account(Name='Test'+i, Industry='Media'));
    }
insert accList;
// Set<Id> parentId= new Set<Id> ();
// // List<Contact> conList= new List<Contact> ();
// for(Account each: accList){
//     // Contact con =new Contact(LastName='TestLast', AccountId=each.Id);
//     parentId.add(each.Id);
//     //conList.add(con);
// }

// insert conList;
Contact con= new Contact(LastName='Test');
insert con;


String industry= 'Media';
test.startTest();
insertContactForAccount q=new insertContactForAccount(industry, con);
Id jobId=System.enqueueJob(q);
test.stopTest();

//List<Contact> existingList= [select count(id)  from contact where AccountId in(select id from account where industry='Media')];

Assert.areEqual(10, [select count(id)  from contact where AccountId in(select id from account where industry='Media')]);






}
}