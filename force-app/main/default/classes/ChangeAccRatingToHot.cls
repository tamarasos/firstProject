public class ChangeAccRatingToHot  implements Database.Batchable<sObject>, Database.Stateful {
    //Change the rating of all accounts to hot, and print out the number of updated accounts
    

        Integer totalProcessed = 0 ; 
        
        public Database.QueryLocator start(Database.BatchableContext bc) {
            // collect the batches of records or objects to be passed to execute
            return Database.getQueryLocator('select id,  rating from account');
        }
        public void execute(Database.BatchableContext bc, List<Account> records) {
           totalProcessed+=records.size();
           for(Account each:records){
            each.Rating='Hot';
            // totalProcessed++;
           }

           
        update records;
            }
            
            
          
        
        public void finish(Database.BatchableContext bc) {
           
Id jd=bc.getJobId();
AsyncApexJob result = [ SELECT Id, Status, NumberOfErrors,
                                JobItemsProcessed,
                                TotalJobItems
                                FROM AsyncApexJob
                                WHERE Id = :jd ]; 

System.debug('result value is : ' + result);
System.debug('totalProcessed value is : ' + totalProcessed);




        }
            
    }  
