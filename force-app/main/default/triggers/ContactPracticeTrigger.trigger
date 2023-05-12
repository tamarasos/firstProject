
trigger ContactPracticeTrigger on Contact (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        //retrieve the ids of the contacts that related to any account
        Set<Id> accountIds = new Set<Id>();
        for (Contact con : Trigger.new) {
            if (con.AccountId!=null) {
                accountIds.add(con.AccountId);
            }
        }
        // get aggregate result for all accounts
        List<AggregateResult> results = [
            SELECT AccountId, COUNT(Id) totalContacts
            FROM Contact
            WHERE Active__c = TRUE AND AccountId IN :accountIds
            GROUP BY AccountId
        ];
        // build final list of accounts to update
        List<Account> accountsToUpdate = new List<Account>();
        
        for (AggregateResult result : results) {
            Account acc=new Account(id=(id)result.get('accountid'),
                                    active_contacts__c=(decimal)result.get('totalContacts'));
            accountsToUpdate.add(acc);
           }
      
        // insert the final list of account
        update accountsToUpdate;
  }
    }
    
    
    
    
    

