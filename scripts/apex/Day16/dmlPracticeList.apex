/**
/**
 DML Practice

Create List of Account 
add 5 items with below Name 
Apex Acc 1 
Apex Acc 2 
Apex Acc 3 
Apex Acc 4 
Apex Acc 5 

insert this List 

update the annual revenue field with 
random number between 0, 100000

let this update reflect in salesforce 
update using the list in one shot  

// Optionally Delete them all
 */

 List<Account> accList = new  List<Account>() ; 

//  for(Integer i=1; i<=5 ;i++) {

//      // Apex Acc i
//      // create account instance
//      Account a = new Account(); 
//      a.Name = 'Apex Acc ' + i ; 
//      // add that to the list 
//      accList.add(a) ; 
    
//  }

 for(Integer i=1; i<=5 ;i++) {
     // add that to the list 
     accList.add(  new Account(Name = 'Apex Acc ' + i )   ) ; 
    
 }

 System.debug('accList value BEFORE is : ' + accList); 
 insert accList ; 
 System.debug('accList value AFTER is : ' + accList); 



// update the annual revenue field with 
// random number between 0, 100000

for(Account each: accList){
    each.AnnualRevenue = Math.round(Math.random()*100000);
}
System.debug('accList after update value is : ' + accList ); 
// update it in salesforce with dm l statement
update accList;


// Create a new List of Account called vipAccounts
List<Account> vipAccounts=new List<Account>();
// loop through each item in your accList and 

for(Account each:accList){

    if(each.AnnualRevenue>50000){
        each.Description='Important account';
        vipAccounts.add(each);
    }
}
System.debug('vipAccount value is : ' + vipAccounts); 
// if the annual revenue id greater than 50000
// update Description field to IMPORTANT ACCOUNT
// add this account to vipAccount List
// eventually update vipAccount to reflect this change

update vipAccounts;

// delete  them all
delete accList;
undelete accList;