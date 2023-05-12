// 10. Create a List<Contact> and fill up with 5 Contacts with below fields 
//    - LastName :  TestContact (1,2,3,4,5)
//    - BirthDate:  1987 , 5 , (1,2,3,4,5)
//    - insert these contacts into your org
//    - Create a Map<ID,Contact> and fill it up with 
//      - ID of each Contact in the list as Key
//      - each Contact itself as value 
//    - Loop through(Iterate over) the Map keys 
//      - print out the each Key and Value 
//      - print out the Contact  lastName value

List<Contact> oldList= new List<Contact> ();

for(Integer i=1; i<=5; i++){
  oldList.add(new Contact(lastName='TestContact' + i, Birthdate= date.newInstance(1987, 5, i) ));
}

insert oldList;
System.debug('myVar value is : ' + oldList); 

Map<Id,Contact> newMap= new Map<Id,Contact>(oldList);

for(Contact each: oldList){
  newMap.put(each.Id, each);
}
System.debug('newMap value is : ' + newMap); 

for(Id each: newMap.keySet()){
  System.debug('each value is : ' + each + newMap.get(each).LastName); 
  
}