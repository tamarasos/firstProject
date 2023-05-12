private class LeadTriggerTest1 {
    

@isTest
 static void beforeInsertTest(){


    //1. create test data

    List<Lead> leadLst= new List<Lead> ();
    leadLst.add(new Lead(LastName='Test',FirstName='TestFirst', Company='TestCompany'));
    leadLst.add(new Lead(LastName='Test',FirstName='TestFirst', Company='TestCompany'));

test.start();
insert leadLst;
test.stop();

List<Lead> existingLst=[select LastName, FirstName, LeadSource from lead];


Assert.areEqual('TEST', existingLst[0].LastName);
Assert.areEqual('TEST', existingLst[1].LastName);



 }
 static void beforeInsert1(){
    List<Lead> leadLst= new List<Lead> ();
    leadLst.add(new Lead(LastName='Test',FirstName='TestFirst', Company='TestCompany'));
    leadLst.add(new Lead(LastName='Test',FirstName='TestFirst', Company='TestCompany'));

test.start();
insert leadLst;
test.stop();

List<Lead> existingLst=[select LastName, FirstName, LeadSource from lead];


Assert.areEqual('Testfirst', existingLst[0].firstName);
Assert.areEqual('Testfirst', existingLst[1].FirstName);

 }


 @isTest
 static void testBeforeDelete(){

    // Write a method that accept List of Lead (from Trigger context variable)
    // * and check if the lead status is Working - Contacted
    // * prevent deletetion with error message 
    // */

    List<Lead> leadLst= new List<Lead> ();
    leadLst.add(new Lead(LastName='Test', Company='TestCompany', Status='Working - Contacted'));
    leadLst.add(new Lead(LastName='Test', Company='TestCompany', Status='Prospecting'));


insert leadLst;

List<Lead> existingLst= [select leadStatus from Lead];


Database.DeleteResult [] res =Database.delete(leadLst, false);


Assert.areEqual(false, res[0].isSuccess());
Assert.areEqual(true, res[1].isSuccess());


Assert.areEqual('Can not Delete a Lead in Working Status',res[0].getErrors()[0].getMessage() );
Assert.areEqual('Can not Delete a Lead in Working Status',res[1].getErrors()[0].getMessage() );

 }




 static void testAfterInsertTaskCreation(){

    List<Lead> leadLst= new List<Lead> ();
    leadLst.add(new Lead(LastName='Test', Company='TestCompany', Status='Working - Contacted'));
    leadLst.add(new Lead(LastName='Test', Company='TestCompany', Status='Prospecting'));


    insert leadLst;
Date two=date.today()+2;
   List<Task> allTask= [select subject, ActivityDate, WhoId from task where subject LIKE 'Send Apple Air tag to Test' and ActivityDate:=two];


   Assert.areEqual(2, allTask.size());

   for(Inteegr i=0; i<=2;i++){
    Task eachTask=allTask[i];
    Lead eachLead=allLead[i];
    Assert.areEqual(date.today()+2; eachTask.ActivityDate);
    Assert.areEqual('Send Apple Air tag to 'eachLead.LastName.toUpperCase();eachTask.Subject)
   }




 }













}