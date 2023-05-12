// // // Find out how many unique names showed up in the list by creating a Set.
// // //     a. Create an empty Set of String 
// // //     b. Iterate over names List using for each loop
// // //     c. use add method of Set to add each items into Set
// // //     d. outside the loop print out the set and the size of the set*/


// // // Set<String> letters=new Set<String> ();

// //  // Create a variable with sObject type of Account 
// //  // assign the Name field value 
 

// // //  Account a1= new Account ();
// // //  a1.Name = 'Mark';
// // //  Account a1 = new Account (Name='Mark');

// // //  insert a1;

// // //  System.debug('a1 value is : ' + a1); 
// // //  a1.Name = 'Updated name';
// // //  a1.BillingState='va';
// // //  update a1;


// // // Create List of Account 
// // // add 5 items with below Name 
// // // Apex Acc 1 
// // // Apex Acc 2 
// // // Apex Acc 3 
// // // Apex Acc 4 
// // // Apex Acc 5 

// // // insert this List 

// // // update the annual revenue field with 
// // // random number between 0, 100000

// // // let this update reflect in salesforce 
// // // update using the list in one shot  

// // // // Optionally Delete them all
// // //  */

// // // for(Integer i=1; i<=5;i++){

// // //     accList.add( new Account(Name='Apex Acc'+i));
// // // }



// //  List<Account> accList = new  List<Account>() ; 

// // for(Integer i=1; i<=5 ;i++) {
// //      // add that to the list 
// //      accList.add(  new Account(Name = 'Apex Acc ' + i )   ) ; 
    
// //  }
// // System.debug('accList value is : ' + accList); 

// // insert accList;

// // for(Account each: accList){
// //     each.AnnualRevenue=math.round( Math.random()*100000);
// // }
// // update accList;

// // //  if the annual revenue id greater than 50000
// // // update Description field to IMPORTANT ACCOUNT
// // // add this account to vipAccount List
// // // eventually update vipAccount to reflect this change


// // List<Account> vipAcc = new List<Account> ();

// // for(Account each:accList){
// // if (each.AnnualRevenue>50000){
// //     each.Description= 'important';
// //    vipAcc.add(each);
// // }
// // }
// // System.debug('accList value is : ' + accList); 

// Account a1 = new Account(Name='name from apex');
// insert a1;
// System.debug('a1 value is : ' + a1); 
// // ID acc1Id = Id=001Dn00000L2Pa7IAF;
// Id acc1Id = a1.Id;
// Contact c1= new Contact();
// c1.FirstName='mara';
// c1.LastName='luda';
// c1.AccountId=a1.Id;
// insert c1;

// Contact c2 = new Contact(FirstName= 'aapex contact 2', LastName = 'cd', AccountId = accId);
// c2.Cases=(new Case(Subject='Case under AB Contact'))








// Create a Account with Name value set 
//    - insert it into Salesforce
//    - Create a Contact with LastName filled up under this Account
//    - insert it into Salesforce
//    - Create Task with below fields set 
//       - WhatId = Id of the Account above
//       - WhoId  = Id of the Contact above 
//       - Subject = 'Follow up with YourContactNameGoesHere' ; 
//       - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
//       - ActivityDate = 7 Days from Today
// //       - Status = 'Pending' ;

// Account a1 = new Account ();
// a1.Name = 'Account name';

// insert a1;

// System.debug('a1 value is : ' + a1); 

// Contact c1 = new Contact();
// c1.LastName = 'maric';
// c1.AccountId=a1.Id;
// insert c1;
// System.debug('c1 value is : ' + c1); 

// Task t1 = new Task();
// t1.WhatId = a1.Id;
// t1.WhoId=c1.Id;
// t1.Subject ='subject';
// t1.ActivityDate= date.today()+7;

// insert t1;


// reate a Lead with required Fields filled up 
//    - insert it into your org 
//    - Create a variable with Task sObject type and assign the value 
//    - fill up the below fields for this task
//       - WhoId with the Id of the lead created above 
//       - Priority 'High'
// //       - ActivityDate  Date 7 days from now 


// Lead l1= new Lead (LastName='sosevic', Company= 'abc');
// insert l1;


// Task tas1 = new Task (WhoId= l1.Id , Priority= 'high', ActivityDate= date.today()+7);
// System.debug('tas1value is : ' + tas1); 
// insert tas1;

// task1
//  Write an Apex code that store two numbers in Integer variables 
//    - Print out the bigger number 

// Integer num1= 64;
// Integer num2=62;
// System.debug('math.max(num1,num2) value is : ' + math.max(num1,num2)); 



// task 2
//     Write an Apex code that store 3 numbers in Integer variables
//    - Print out the smallest number 

