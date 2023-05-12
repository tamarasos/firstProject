@isTest
private class ContactUpdateTriggerTest{



@isTest
static void testHappy(){
Account testAccount = new Account(Name = 'Test Account');

insert testAccount;
List<Contact> testContacts = new List<Contact>{
    new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 1', Active__c = false),
    new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 2', Active__c = true),
    new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 3', Active__c = true)
};
insert testContacts;
Contact c4=new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 4', Active__c = true);

test.startTest();
insert c4;
test.stopTest();

Account a= [select id, Active_Contacts__c   from account where   Id =:testAccount.Id];

Assert.areEqual(3, a.Active_Contacts__c);
}

@isTest
static void testUnhappy(){
Account testAccount = new Account(Name = 'Test Account');

insert testAccount;
List<Contact> testContacts = new List<Contact>{
    new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 1', Active__c = false),
    new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 2', Active__c =false),
    new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 3', Active__c = false)
};
insert testContacts;

 Contact c4=new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 4', Active__c = true);

test.startTest();
insert c4;
test.stopTest();

Account a= [select id, Active_Contacts__c   from account where   Id =:testAccount.Id];
Assert.areEqual(1, a.Active_Contacts__c);
}




}

// @IsTest
// private class UpdateActiveContactsTest {
//     @TestSetup
//     static void setupTestData() {
//         // Create a test Account
//         Account testAccount = new Account(Name = 'Test Account');
//         insert testAccount;
        
//         // Create three test Contacts on the Account, one inactive and two active
//         List<Contact> testContacts = new List<Contact>{
//             new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 1', Active = false),
//             new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 2', Active = true),
//             new Contact(AccountId = testAccount.Id, LastName = 'Test Contact 3', Active = true)
//         };
//         insert testContacts;
//     }
    
//     @IsTest
//     static void testActiveContactsField() {
//         // Get the test Account and its original Active Contacts field value
//         Account testAccount = [SELECT Id, Active_Contacts__c FROM Account WHERE Name = 'Test Account'];
//         Decimal originalActiveContacts = testAccount.Active_Contacts__c;
        
//         // Create a new active Contact on the test Account
//         Contact newActiveContact = new Contact(AccountId = testAccount.Id, LastName = 'New Test Contact', Active = true);
//         insert newActiveContact;
        
//         // Query the Account again and check that the Active Contacts field has been updated correctly
//         testAccount = [SELECT Id, Active_Contacts__c FROM Account WHERE Id = :testAccount.Id];
//         System.assertEquals(originalActiveContacts + 1, testAccount.Active_Contacts__c);
//     }
    
//     @IsTest
//     static void testInactiveContactsField() {
//         // Get the test Account and its original Active Contacts field value
//         Account testAccount = [SELECT Id, Active_Contacts__c FROM Account WHERE Name = 'Test Account'];
//         Decimal originalActiveContacts = testAccount.Active_Contacts__c;
        
//         // Create a new inactive Contact on the test Account
//         Contact newInactiveContact = new Contact(AccountId = testAccount.Id, LastName = 'New Test Contact', Active = false);
//         insert newInactiveContact;
        
//         // Query the Account again and check that the Active Contacts field has not been updated
//         testAccount = [SELECT Id, Active_Contacts__c FROM Account WHERE Id = :testAccount.Id];
//         System.assertEquals(originalActiveContacts, testAccount.Active_Contacts__c);
//     }
// }
