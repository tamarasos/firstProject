@isTest
public  class RemainderTaskTest {
   
@isTest
static void testRemainderTask(){
List<Opportunity> oppList= new List<Opportunity>();
for(Integer i=1; i<=10; i++){
    oppList.add(new Opportunity(StageName='Prospecting', Name='OppTest'+i, CloseDate=date.today()-7));
}
insert oppList;
Set<Id> oppId= new Set<Id> ();
for(Opportunity each: oppList){
    oppId.add(each.Id);
}
test.startTest();
Schedulable s= new RemainderTask();
System.schedule('Practice', '0 0 0 15 3 ? 2042', s);
// List<Task> taskListBefore= [select id, WhoId from task where WhoId in:oppId];
// Assert.areEqual(0, taskListBefore.size());
test.stopTest();

List<Task> taskList= [select id, WhoId from task where WhatId in:oppId];
Assert.areEqual(10, taskList.size());


}

}