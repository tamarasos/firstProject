@isTest
public  class ChangeAccRatingToHotTest {
   
@isTest
public static void testChange(){

List<Account> accList= new List<Account>();
for(Integer i=1; i<=10; i++){
    accList.add(new Account(Name='Test'+i));
}
insert accList;


test.startTest();
ChangeAccRatingToHot b= new ChangeAccRatingToHot();
Database.executeBatch(b, 10);
test.stopTest();



List<Account> newList=[select id from account where rating='Hot'];
System.assertEquals(10, newList.size());

}







}