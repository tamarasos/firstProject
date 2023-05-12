@isTest
public class AccountPhoneUpdateTest {
   
@isTest
public static void testUpdate(){
//Arrange
List<Account> accList= new List<Account>();
for(Integer i=1; i<=5; i++){
    accList.add(new Account(Name='Test'+i, Phone='123321456'));
}

insert accList;

List<Contact> conList= new List<Contact>();
for(Account each: accList){
    conList.add(new Contact(LastName='Test', AccountId=each.Id));
}
insert conList;

test.startTest();
for(Account each:accList){
    each.Phone='7899999999';
}
test.stopTest();

List<Contact> updatedConList=[select id,  homePhone from contact where Id=:conList[0].Id];

System.assertEquals('7899999999', updatedConList[0].HomePhone);

}


}