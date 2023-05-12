@isTest
private class AccountNet4Test{


    @isTest
    static void testBeforeUpdate(){
        //Arrange
List<Account>accList=new List<Account>();
accList.add(new Account(Name='NameTest', Recent_Opportunity_Ammount__c=123321));
// accList.add(new Account(Name='NameTest1', Recent_Opportunity_Ammount__c=123322));

List<Opportunity>oppList=new List <Opportunity>();
for(Account each: accList){
oppList.add(new Opportunity(Name='OppTest',AccountId=each.Id,  closeDate=date.today()+10, StageName='Closed Won', Amount=100000));
oppList.add(new Opportunity(Name='OppTest2', AccountId=each.Id, closeDate=date.today()+1, StageName='Prospecting', Amount=200000));
}

insert oppList;

List<AggregateResult> aggResult=[select sum(Amount)totalAmount from Opportunity group by AccountId];

Assert.areEqual(300000,aggResult[0].get('totalAmount') );














}
}