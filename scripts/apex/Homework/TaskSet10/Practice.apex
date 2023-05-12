//  Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
// for example : '  DML   iS reaLly CoOl   '
//    - Remove the space in the beginning and at the end then print 
//          should be => 'DML   iS reaLly CoOl'
//    - normalize the space then print 
//          should be => 'DML iS reaLly CoOl'
//    - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
//    - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false  (check out the existing method in String class)

// String sentence=  '  DML   iS reaLly CoOl   ';
// String removed= sentence.removeStart(' ').removeEnd(' ');
// System.debug('removed value is : ' + removed); 

// String normal = removed.normalizeSpace();
// System.debug('norm value is : ' + normal); 
//  Boolean starts = normal.startsWith('DML');
//  System.debug('starts value is : ' + starts); 
// System.debug('normal.endsWithIgnoreCasvalue is : ' + normal.endsWithIgnoreCase('cool')); 


// eate a String variable called message that contains a sentence with mixed case. 
// for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
//    - split to get List of String containing each words
//    - use for loop to go though each items
//       - make each item TitleCase (lookup capitalize method from String class)
//       - make sure to assign it back to yourList[i] so it actually update your list item
//    - outside your loop , print out to see latest change
//    - join the list items with space 
//       => re-assign back to the String variable message
//       => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 

// String message= 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';
// List<String> splList= message.split(' ');
// System.debug('splList value is : ' + splList); 
// for(Integer i=0; i<splList.size();i++){
//     String each= splList.get(i);
//     each=each.toLowerCase().capitalize();
//     splList.set(i, each);
// }
// System.debug('spl value is : ' + splList); 
// String joined = String.join(splList, ' ');
// System.debug('SplList1 value is : ' + joined); 
// message= String.join(splList, ' ');
// System.debug('message value is : ' + message); 



// // // 2. Create a String variable called `message` that contains a sentence with mixed case. 
// // for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
// String message = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase' ; 
// System.debug('message value is : ' + message); 
// //    -  `split` to get List of String containing each words
// List<String> wordList = message.split(' '); 
// //    - use for loop to go though each items
// for(Integer i=0; i<wordList.size() ;i++) {
//     //make each item TitleCase (lookup `capitalize` method from String class)
//     //make sure to assign it back to `yourList[i]` so it actually update your list item
//     wordList[i] = wordList[i].toLowerCase().capitalize();
// }
// //    - outside your loop , print out your List to see latest change
// System.debug('wordList value is : ' + wordList); 
// //    - `join` the list items with space 
// //       => re-assign back to the String variable `message`
// message = String.join(wordList,' '); 
// //       => expect to see `'Apex Made It Easy To Work With Salesforce Database'` when printing 
// System.debug('message value is : ' + message); 


// 3. Create an empty List of Lead
//    - use for loop to go through 10 iteration 
//    - add lead with FirstName, LastName, Company fields filled up as below
     
//    'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
//    'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
//    ....
//    'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
// //    insert the list into your org
//   List<Lead> emptyLst= new List<Lead> ();
//    for(Integer i=1; i<=10; i++){
//     Lead ld = (new Lead  (firstName='Test Lead FN'+i , LastName='Test Lead LN'+i , Company= 'Company'+ i ));
//    emptyLst.add(ld);
//    } 
//    System.debug('emptyLst value is : ' + emptyLst); 
// insert emptyLst;

// 4. Create a Lead with required Fields filled up 
//    - insert it into your org 
//    - Create a variable with Task sObject type and assign the value 
//    - fill up the below fields for this task
//       - WhoId with the Id of the lead created above 
//       - Priority 'High'
//       - ActivityDate  Date 7 days from now 
// Lead l1= new Lead( LastName= 'mane', Company='abc', Status='open-not contacted');
// insert l1;
// System.debug('l1 value is : ' + l1); 
// Task t1= new Task (WhoId= l1.Id, Priority='high', ActivityDate=date.today()+7);
// insert t1;

// 5. Create List of Opportunity 
//    - Add 10 items in it with valid Opportunity required fields filled up 
//       - Name,  Opp - 1(2,3,4,5..10)
//       - ClosedDate (10 days from Today), 
//       - StageName ='Prospecting', 
//       - Amount  random Integer between 0-100000
//    - insert the list into your org 

//    - Create an Account with Name = 'Parent of Cool Opps'
//    - insert into Salesforce org 

//    - Create an empty List of Opportunity called coolOppsList
//       - Loop through your entire List of 10 items 
//       - If amount is greater than 60000
//          - Update AccountId field to Id of Account you created earlier
//          - Add the Opportunity to coolOppsList

//    - Update the coolOppsList in your org 
// //    - Go to user interface and observe you have filled up Account Name field of all opportunities that has amount field over 60000 to 'Parent of Cool Opp'
// List<Opportunity> oppList = new List<Opportunity> ();  
// for(Integer i=1; i<=10 ;i++) {

//     Opportunity opp = new Opportunity(); 
//     // Name, Opp - 1(2,3,4,5..10)
//     opp.Name = 'X Opp - ' + i ; 
//     // ClosedDate (10 days from Today),
//     opp.CloseDate = Date.today().addDays(10) ; 
//     // StageName ='Prospecting', `
//     opp.StageName = 'Prospecting' ;
//     // Amount : random Integer between 0-100000
//     opp.Amount   = Math.round( Math.random() * 100000); 
//     // add it to the list 
//     oppList.add( opp ) ; 
// }
// System.debug('oppList value is : ' + oppList); 
// insert oppList;

// Account a1 = new Account (Name='Parent of Cool Opps');
// insert a1;
// List<Opportunity> coolOppsList= new List<Opportunity>();
// for(Opportunity each: oppList){
//     if(each.amount>60000){
//         each.AccountId=a1.Id;
//         coolOppsList.add(each);
//     }

// }
// System.debug('coolOppsList value is : ' + coolOppsList); 
// update coolOppsList;
// 6. Create a Date variable with name birthDay and assign the value that represent any date you want.
//    - print out the day portion of the date (check the doc for right method from Date Class)
//    - print out the month portion of the date (check the doc for right method)
//    - print out the year portion of the data (check the doc for right method)
//    - print out the result of checking if the year fall into leapYear (check the doc for right method)
//    - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
//    - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)

// Date birthay = date.newInstance(1988, 05, 17);
// System.debug(birthay.day());
// System.debug(birthay.month());
// System.debug(birthay.year());

// System.debug(date.today().monthsBetween(birthay));

// System.debug('date.today().daysBetween(birthay) value is : ' + date.today().daysBetween(birthay)); 

// // 7. Create an Opportunity variable and assign the value with required fields set 
//    - Name , ClosedDate , StageName
//    - if ClosedDate is over 3 months (use monthsBetween method) and StageName is not Closed Won 
//       - update the StageName value to Closed Lost 
//    - Create a String List called stageNames and 11 stage in Opportunity picklist
//    - Create a String variable called selectedStageName
//       - assign the value to a random item from above List of 10 item (from index 0-9)
//    - Create another Opportunity instance with below fields
//       - Name , ClosedDate , StageName(assign using selectedStageName)
//    -  if ClosedDate is over 3 months and StageName is not Closed Won 
//       - update the StageName value to Closed Lost 
// Opportunity opp= new Opportunity (Name='opp name', CloseDate= date.today()-2, StageName='closed won');
// Integer overDueInMonth = opp.CloseDate.monthsBetween( Date.today() ) ;
// if(overDueInMonth>3 && opp.StageName!='closed won'){
//     opp.StageName='closed lost';
// }
// System.debug('opp.StageName value is : ' + opp.StageName);  

//  List<String> stageNames = new List<String>{
//         'Prospecting',
//         'Qualification',
//         'Needs Analysis',
//         'Value Proposition',
//         'Id. Decision Makers',
//         'Perception Analysis',
//         'Proposal/Price Quote',
//         'Negotiation/Review',
//         'Closed Won',
//         'Closed Lost'
//     };

// String selectedStageName= stageNames.get(math.round(math.random()*9));
// System.debug('selectedStageName value is : ' + selectedStageName); 
// Opportunity opp2= new Opportunity (Name= 'opp2 name', CloseDate= date.newInstance(2022, 07, 24), stageNames='closed lost');
// Integer overdue1= opp.CloseDate.monthsBetween(date.today());
// if(overdue1>3 && opp.StageName!='closed won'){
//     opp.StageName='closed lost';
// }


// 8. Create a Contact variable and assign value along with below fields 
//    - LastName, Birthdate
//    - insert it into Salesforce 
//    - check if today is the birthday of this Contact according to Birthdate field value
//       - print 'It's your Birthday Today, Tada! '
//       - else print 'It's not your Birthday Today'
//       - Hint : birthday means the date has same month and year as Today's date

// Contact c1= new Contact (LastName='saric', Birthdate=date.newInstance(1984, 08, 24));
// insert c1;
// If(c1.Birthdate.day()==date.today().day() && c1.Birthdate.month()==date.today().month()){

// }


// if(c1.BirthDate.month()== Date.today().month() && 
//     c1.BirthDate.day()==  Date.today().day() ){
// //       - print 'It's your Birthday Today!! Tada!! '
//     System.debug('It\'s your Birthday Today!! Tada!! '); 
// //       - else print 'It's not your Birthday Today!'
// }else{
//     System.debug('It\'s not your Birthday Today!'); 
// }
// 9. Create a Account with Name value set 
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
// Account a1= new Account (Name='acc name');
// insert a1;
// Contact c1= new Contact(LastName='sosevic', AccountId=a1.id);
// insert c1;
// Task t1= new Task(WhatId=a1.id, WhoId=c1.Id, 
// Subject='Follow up with ' + c1.Name, 
// Description='Have a chat with   '+ c1.LastName +  'from   ' +  a1.Name,
// ActivityDate= date.today()+7,
// Status='pending'  );
// insert t1;



// 10. Create an Account variable with name targetAcc and assign value with below fields 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
//    - insert it into Salesforce
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
//       - ShippingState       has same value as BillingState
//       - ShippingCity        has same value as BillingCity
//       - ShippingPostalCode  has same value as BillingPostalCode

// Account targetAcc= new Account (name='new account1', BillingState='srb', BillingCity='bg', BillingCountry='europe', BillingPostalCode='100000');
// insert targetAcc;
// targetAcc.ShippingCountry= targetAcc.BillingCountry;
// targetAcc.ShippingState=targetAcc.BillingState;
// targetAcc.ShippingCity=targetAcc.BillingCity;
// targetAcc.ShippingPostalCode=targetAcc.BillingPostalCode;
// update targetAcc;

// contact c1= new Contact(LastName='added contact', AccountId= targetAcc.id);
// insert c1;
// 11. Continue from above task (in different file)
//    - Create 5 placeholder Contact under this Account and fill up as below
//       - LastName : AccountName followed by (1,2,3,4,5)
//       - MailingCountry     has same value as Account BillingCountry
//       - MailingState       has same value as Account BillingState
//       - MailingCity        has same value as Account BillingCity
//       - MailingPostalCode  has same value as Account BillingPostalCode

//    - Steps : 
//       - Create an empty List of Contact with name contactList
//       - use for loop to iterate over 5 iteration 1-5
//       - Create an Contact variable , assign value as above 
//       - assign the AccountId field to the Id of targetAcc
//       - add it to your contactList
//          - or do in one shot
//       - outside of your loop
//       - insert contactList
//          - print out the List, observe Ids generated for Contact
//       - verify from your Salesforce org 
// Account targetAcc= new Account (name='new account1', BillingState='srb', BillingCity='bg', BillingCountry='europe', BillingPostalCode='100000');
// insert targetAcc;
// targetAcc.ShippingCountry= targetAcc.BillingCountry;
// targetAcc.ShippingState=targetAcc.BillingState;
// targetAcc.ShippingCity=targetAcc.BillingCity;
// targetAcc.ShippingPostalCode=targetAcc.BillingPostalCode;
// update targetAcc;
// List<Contact> contactList= new List<Contact>();
// for(Integer i=1; i<5;i++){
//    contactList.add(  new Contact(LastName=targetAcc.Name + i, AccountId=targetAcc.id, MailingCountry=targetAcc.BillingCountry, MailingCity=targetAcc.BillingCity));

// }
// insert contactList;
// System.debug('contactList value is : ' + contactList); 
