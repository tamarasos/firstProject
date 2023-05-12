
      Account targetAcc1 = new Account(); 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
    targetAcc1.Name              = 'Salesforce ';
    targetAcc1.BillingState      = 'California';
    targetAcc1.BillingCity       = 'San Francisco';
    targetAcc1.BillingCountry    = 'US';
    targetAcc1.BillingPostalCode = '11111';
//    - insert it into Salesforce
    insert targetAcc1 ; 
    System.debug('targetAcc value is : ' + targetAcc1); 

//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
    targetAcc1.ShippingCountry = targetAcc1.BillingCountry ; 
//       - ShippingState       has same value as BillingState
    targetAcc1.ShippingState = targetAcc1.BillingState ; 
//       - ShippingCity        has same value as BillingCity
    targetAcc1.ShippingCity = targetAcc1.BillingCity ; 
//       - ShippingPostalCode  has same value as BillingPostalCode
    targetAcc1.ShippingPostalCode = targetAcc1.BillingPostalCode ; 

    // save it back to Salesforce 
    update targetAcc1 ; 
    System.debug('targetAcc value is : ' + targetAcc1); 




// // Continue from above task (in different file)
//    - Create 5 placeholder Contact under this Account and fill up as below

//       - LastName : AccountName followed by (1,2,3,4,5)
//       - MailingCountry     has same value as Account BillingCountry
//       - MailingState       has same value as Account BillingState
//       - MailingCity        has same value as Account BillingCity
//       - MailingPostalCode  has same value as Account BillingPostalCode

//    - Steps : 
//       - Create an empty List of Contact with name contactList
      List <Contact> contactList = new List<Contact> ();
    //   - use for loop to iterate over 5 iteration 1-5
      for(Integer i=1; i<6; i++){
       contactList.add(  new Contact( LastName= targetAcc1.Name + i,
                                MailingCountry=targetAcc1.BillingCountry,

                                MailingState=targetAcc1.BillingState, 
                                MailingCity=targetAcc1.BillingCity,
                                MailingPostalCode=targetAcc1.BillingPostalCode,
                                AccountId=targetAcc1.Id));


      }
    insert contactList; 


System.debug('contactList value is : ' + contactList); 

               
    //   - Create an Contact variable , assign value as above 
    //   - assign the AccountId field to the Id of targetAcc
    //   - add it to your contactList
    //      - or do in one shot
    //   - outside of your loop
    //   - insert contactList
    //      - print out the List, observe Ids generated for Contact
  

  