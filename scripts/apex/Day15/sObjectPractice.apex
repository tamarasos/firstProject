/**

 */
// Create a Contact variable and initializing it's value
 Contact c1 = new Contact(); 
 // assigning the field values
 c1.FirstName = 'Zeynep' ; 
 c1.LastName  = 'Yildiz' ; 
 c1.Email     = 'zeynep@force.com'; 
// printing 
 System.debug('c1 value is : ' + c1); 

// or you can directly provide field value inside ()
// while assigning the value to the variable 
 Contact c2 = new Contact(FirstName='Gulya', LastName='K');
 System.debug('c2 value is : ' + c2);  

//  create a list of contact and initialize its value 
// store 2 above contacts instances into the list

List<Contact> contacts = new List<Contact>();
contacts.add(c1);
contacts.add(c2);
contacts.add(new Contact(FirstName='Natalia', LastName='T'));
System.debug('contacts value is : ' + contacts); 

 // Print out the first item in the List (either with list syntax or array)
System.debug('contacts.get(0) value is : ' + contacts.get(0)); 
System.debug('contacts[0] value is : ' + contacts[0]); 
 // Print out the first item First name in the List (either with list syntax or array)
 
System.debug('contacts.get(0).FirstName value is : ' + contacts.get(0).FirstName); 

 // Print out the second item in the List (either with list syntax or array)
System.debug('contacts.get(1) value is : ' + contacts.get(1)); 


 // Print out the second item last name in the List (either with list syntax or array)

System.debug('contacts.get(1).LastName value is : ' + contacts.get(1).LastName); 

// loop throught each item and print them out
for(Contact each:contacts){
    System.debug('each value is : ' + each); 
}

insert contacts;