
public  class TestDataFactory {

/**
 * Create a list of case records for testing purposes.
 * @param numCases The number of cases to create
 * @param priority The priority to set for all cases
 * @return A list of case records
 */
public static List<Case> createCases(Integer numCases, String priority) {

List<Case> caseList= new list<Case> ();
for(Integer i=0; i<=numCases; i++){
    caseList.add(new Case(Priority=priority, Status='New',Origin='Web', Subject='Test'+i));
}

return caseList;



}




    
}