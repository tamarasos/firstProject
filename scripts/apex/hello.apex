// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Contact c1= new Contact ();
c1.FirstName='ana';
c1.LastName='min';
c1.Email='anamin@force.com';
System.debug('c1 value is : ' + c1); 

Contact c2= new  Contact (FirstName='mina', LastName='g');
System.debug('c2 value is : ' + c2); 

List<Contact> contacts=new List<Contact>();
contacts.add(c1);
contacts.add(c2);
contacts.add(new contact(FirstName='bin', LastName='c'));
System.debug('contacts value is : ' + contacts); 

System.debug(contacts.get(0)); 
System.debug('contacts[0] value is : ' + contacts[0]); 

String FirstContactFirtsName=contacts.get(0).FirstName;