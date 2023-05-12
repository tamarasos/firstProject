
@isTest
public with sharing class ContactSpouseTriggerHandlerTest {
   

    @isTest
    static void handleTest(){

Contact con1=new Contact(LastName='Black', firstName='Jo');
Contact con1=new Contact(LastName='Black', firstName='Eva');


insert con1;
insert con2;

con1.Spouse__c=con2.id;

test.startTest();
update con1;
test.stopTest();

List<Contact> cons=[Select id, spouse__c from contact]

    }
}