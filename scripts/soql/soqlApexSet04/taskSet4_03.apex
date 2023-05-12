// // Task 3 Apex SOQL :

// // Get the Id of Account with name Super Parent.
// // //Account supeAcc = [SELECT Id FROM Account WHERE Name='Super Parent' LIMIT 1];
// // //Id supeAccId = supeAcc.Id ; 

// Id supeAccId = [SELECT Id FROM Account WHERE Name='Super Parent' LIMIT 1].Id ; 

// // Get all the Opportunities with no Parent Account association (AccountId is empty)
// // and store it in the list called orphanOpps.
// List<Opportunity> orphanOpps = [SELECT Name, Amount
//                                 FROM Opportunity
//                                 WHERE AccountId = NULL]; 
// // Add All the orphanOpps under Account with name Super Parent.
// for(Opportunity each : orphanOpps) {
//     each.AccountId = supeAccId ; 
//     each.Amount = 1000 ; // just to make the trigger happy 
// }

// // perform DML Operaiton to save it 
// update orphanOpps ; 







// // Get the Id of Account with name Super Parent.
// // Get all the Opportunities with no Parent Account association (AccountId is empty)
// // and store it in the list called orphanOpps. 
// // Add All the orphanOpps under Account with name Super Parent.

// Account supe=[select id
// from account
// where Name ='Super Parent'];

// List<Opportunity> orphanOpps= [select id
// from Opportunity 
// // where AccountId = null];

// // for(Opportunity each : orphanOpps) {
// //    each.AccountId=supe.Id
// // }
    
// // update orphanOpps;




// // ## Task 4: 
// // Write a SOQL SELECT statement to 
// // retrieve the Name , Account.Name and StageName fields 
// // for all Opportunity records associated with an Account Super Parent 

// // select Name, Account.Name, StageName
// // from Opportunity 
// // where Account.Name ='Super Parent'

// // /## Task 5:  Apex SOQL : 
// // Create a Contact called Super Jon under Account with name Super Parent in UI. 
// // Now in Apex
// // Get the Id of Contact with name Super Jon.
// // Get all the Cases with no Contact association (ContactId is empty)
// // and store it in the list called orphanCases. 
// // Add All the orphanCases under Contact with name Super Jon.
Id superJonId= [select id 
from Contact 
where Name ='Super Jon' limit 1].Id;
// Id superJon=superJon.Id;

List<Case> orphanCases= [select id
 from case
where contactId=null];

for(Case each : orphanCases) {
   each.ContactId=superJonId;
}
    update orphanCases;



// ## Task 6: 
// Write a SOQL SELECT statement to 
// retrieve the Subject , Contact.Name and Status fields 
// for all Cases records associated with an Contact Super Jon (edited)
// /

// select Subject, Contact.Name, Status
//  from Case 
// where Contact.Name = 'Jon Snow'



