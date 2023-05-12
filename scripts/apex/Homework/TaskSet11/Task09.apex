// 9. Create a List<Opportunity> and add 5 valid opportunity with required fields
//    - StageName, Name , ClosedDate , Amount 
//    - insert into Salesforce
//    - Get a Map<Id, Opportunity> out of this List<Opportunity>
//      - either directly putting the list into () while creating the map 
//      - or Create an Empty Map and use putAll method 
//      - or use Loop to add it one by one
//    - Create an empty Map<String,Decimal> 
//      - Loop through your List and 
//      - Add the Opportunity Name field value as Key
//      - Add the Opportinuty Amoung field value as Value

Opportunity o1= new Opportunity( Name ='new1', StageName='closed won', CloseDate=date.today(), Amount= 500000);
Opportunity o2= new Opportunity( Name ='new2', StageName='closed lost', CloseDate=date.today() , Amount=8985);
Opportunity o3= new Opportunity( Name ='new3', StageName='closed won', CloseDate=date.today(), Amount=789);
Opportunity o4= new Opportunity( Name ='new4', StageName='closed lost', CloseDate=date.today(), Amount=456997);
Opportunity o5= new Opportunity( Name ='new5', StageName='closed won', CloseDate=date.today(), Amount=789654);

List<Opportunity> oppList= new List<Opportunity> {o1,o2,o3,o4,o5};

System.debug('oppList value is : ' + oppList); 
insert oppList;
Map<Id,Opportunity> newMap = new Map<Id,Opportunity>(oppList);
System.debug('newMap value is : ' + newMap); 

Map<String,Decimal> emptyMap = new Map<String,Decimal>();
For(Opportunity each:oppList){
    emptyMap.put(each.Name, each.Amount);
}
System.debug('emptyMap value is : ' + emptyMap); 