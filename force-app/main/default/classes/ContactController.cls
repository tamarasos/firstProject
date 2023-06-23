public with sharing class ContactController {

    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsWithTitle(){

        return [Select id, LastName, Title from Contact where 
        Title in ('CEO','CFO')];

    }
    
    
}