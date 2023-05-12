// Create a new Book instance with fields 
Book__c b = new Book__c(Name='Apex 123' );
// insert as Salesforce record
insert b ; 

b.Name = 'Awesome new book for lunch!!!!!' ; 
update b ; 

// String str='aBcDeFg';
// System.debug(str.toLowerCase().capitalize()); 
