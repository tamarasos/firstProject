
// @isTest
// public class AccountTrigger1HandelerTest {

//     @isTest static void TestTrigger(){


//         //arrange
//         //prepare the test data
//         Account a1=new Account(Name='Salesforce', BillingStreet='Broadway');
//         insert a1;
//         Contact c1=new Contact(LastName='Brown', AccountId=a1.id);
//         insert c1;

//         a1.BillingStreet='Longway';

//         //act
//         //take an action

//         test.startTest();

//         update a1;

//         test.stopTest();

//         //assert

//         //write the query to retrieve the updated version

//         Account a1updated=[Select id, name, billingStreet, (Select Id, LastName, MailingStreet from Contacts)
//                             from Account where name='Salesforce'];

//         //System.assertEquals(expected, actual)
//         Assert.areEqual('Longway',a1updated.contacts[0].MailingStreet);






//     }

   
// }

@isTest
private class AccountTrigger1HandelerTest {

@isTest
static void afterUpdateTest(){

//Arrange
Account a1=new Account(Name='Salesforce', BillingStreet='Broadway');
//         insert a1;
//         Contact c1=new Contact(LastName='Brown', AccountId=a1.id);
//         insert c1;

List<Account> accList= new List<Account>();
for(Integer i=1; i<=5; i++){
accList.add(new Account(Name='Test'+i, BillingStreet='Beogradska #'+i));

}
insert accList;
List<Contact> updateList=new List<Contact>();
for(Account each:accList){
updateList.add(new Contact(LastName='Test', AccountId=each.Id));
}
insert updateList;


for(Account each: accList){
    each.BillingStreet='Longway';
}
Test.startTest();
update accList;
Test.stopTest();



List<Contact> conList=[select id, AccountId, MailingStreet from contact where AccountId in: accList
];


Assert.areEqual(5,conList.size() );
for(Contact con: conList){
     System.assertEquals('Longway', con.MailingStreet);

}
}
}




   
