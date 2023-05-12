@isTest
private class AccountNetTriggerHandelerTest {
    

@isTest
static void testAfterUpdateHandeler(){

//Arrange
List<Account> accList=new List<Account> ();
accList.add(new Account(Name='Test'));
accList.add(new Account(Name='Test1'));

List<Opportunity> oppList=new List<Opportunity> ();
for(Account each: accList){
    Opportunity opp=new Opportunity(Name='Test', AccountId=each.Id, StageName='Closed Lost', CloseDate=date.today()-35);
    oppList.add(opp);
}


//Act
//insert accList;
insert oppList;


for(Opportunity each: oppList){
    each.StageName='Closed Won';
}
update oppList;
//Assert

List<Opportunity>oppList1=[select StageName from Opportunity];
    assert.areEqual('Closed Won', oppList[0].StageName);
    //Assert.areEqual(expected,actual);
}







}