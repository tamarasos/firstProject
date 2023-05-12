
//just like future method we can put a code into class that implements Queable
// //and provide details of execute method
// //in order to run code use System.enqueJob
// List<Account> myList= [select id, name, description from Account where Name Like 'Test%'];

// //List<Account> myAccList= AccountController.getAccountWithAnnualRevenue();
// // AccountUpdateAsync q= new AccountUpdateAsync ('From queable', myList);
// // //AccountUpdateAsync q= new AccountUpdateAsync();
// // System.enqueueJob(q);
// List<Account> accId=[select id from Account];
// List<Id> idList= new List<Id> ();
// for(Account each:accId){
//     idList.add(each.Id);
// }

// CountOfCasesOnAccount.CountCases(idList);
Id userId= UserInfo.getUserId();
System.debug(UserInfo.getUserName());
System.debug('userId value is : ' + userId);

UserRole ur=[select name, id
from UserRole 
where name='CFO'];

UserInfo.

