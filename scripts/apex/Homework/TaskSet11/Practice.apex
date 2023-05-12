
// // askkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

// // // Homework : inspired by above 
// // // Given a long string 
// // // find out frequency of each Character
// // // Hint : get a list of all character using split 
// // // use a map to store character and frequency of that character

// String message= 'APEX mAde iT Easy to wOrk With SAles';

// List<string> msgList= message.split('');
// System.debug('msgList value is : ' + msgList); 
// Map<String, Integer> newMap = new Map<String, Integer>();
// // newMap.put(keyGoHere, valueGoHere);
// Integer count=0;
// for(Integer i=0; i<msgList.size();i++){
//     String each= msgList.get(i);
//     if(!newMap.containsKey(each)){
//         newMap.put(each, 1);
//     }else {
//         count=newMap.get(each);
// newMap.put(each,++count);
//     }
    
// }
// System.debug('newMap value is : ' + newMap); 
// // msgList value is : (A, P, E, X,  , m, A, d, e,  , ...)
// newMap value is : { =10, A=11, E=4, O=1, P=1, S=1, T=1, W=1, X=1, a=1, ...}



// String message= 'APEX mAde iT Easy to wOrk With SAles';

// List<string> msgList= message.split('');
// System.debug('msgList value is : ' + msgList); 
// Map<String, Integer> newMap = new Map<String, Integer>();
// // newMap.put(keyGoHere, valueGoHere);
// Integer count=0;
// for(Integer i=0; i<msgList.size();i++){
//     String each= msgList.get(i);
//     if(!newMap.containsKey(each)){
//         newMap.put(each, 1);
//     }else{ // no need a condition for else, if it doesnt contain it means it contains
//         count=newMap.get(each); // everytime we get the current value and increase it by 1
//         newMap.put(each,++count);
//     }

// }
// System.debug('newMap value is : ' + newMap);

// msgList value is : (A, P, E, X,  , m, A, d, e,  , ...)
// newMap value is : { =7, A=3, E=2, O=1, P=1, S=1, T=1, W=1, X=1, a=1, ...}

// 1. Create a Map<String, Integer> to store group name and member count
//    -  Add 5 items into this Map 
//    -  Check if there is a group called Apex Soldiers 
//       -  print out the result in boolean 
//    -  Check if there is a group called Winterfell Vacation
//       -  if so , store the value into a Variable called vMemberCount
//          -  remove this group from the map 
//          -  add new item to the map with below key-value pair
//             -  Winterfell Coders as key , value of vMemberCount as value
//    -  Check if there is a group with 10 members
//       -  if so , decrease the value to 9 

// Map<String, Integer> names = new Map<String, Integer>{'tamara'=>10, 'natasa'=>9, 'winterfell Vacation'=>10, 'sara'=>7,'joca'=>100};
// System.debug('names.containsKey(\'Apex Soldiers\') value is : ' + names.containsKey('Apex Soldiers')); 

// if(names.containsKey('winterfell Vacation')){
//     Integer vMemberCount=names.get('winterfell Vacation');
//     names.remove('winterfell Vacation');
//     names.put('winterfel coders',vMemberCount);
// }
// System.debug('names value is : ' + names); 

// for(String each: names.keySet()){
// if(names.get(each)==10){
//    names.put(each,9);
// }
// }
// System.debug('names value is : ' + names); 
// 2. Given a String variable message contains long string 
//    - for example :  'aaabbcccccddhhhhhhzzzz'
//    - Get a List<String> out of this String containing each characters 
//    - Create an empty Map<String,Integer> called letterFrequencyMap
//    - Loop through your list 
//      - store each character as key 
//      - store frequency of each character as value into the map
//      - result should be {a=3, b=2, c=5, d=2, h=6, z=4}
//    - Loop through this Map (using keySet of course)
//      - print out the characters showed up more than twice 
//      - the result should be c , h , a , z 

// String message= 'abbbbbbcccccccccc';
// List<String> splitStr=message.split('');
// System.debug('splitStr value is : ' + splitStr); 
// Map<String,Integer> letterFrequencyMap= new Map<String,Integer>();
// for(String each: splitStr){
   
//     if(!letterFrequencyMap.containsKey(each)){
//         letterFrequencyMap.put(each,1);
//     }else{
//          Integer count=letterFrequencyMap.get(each);
//         letterFrequencyMap.put(each,++count);
//     }
// }
// System.debug('letterFrequencyMap value is : ' + letterFrequencyMap); 

// for(String each:letterFrequencyMap.keySet()){
//    if(letterFrequencyMap.get(each)>2){
//        System.debug('each value is : ' + each); 
//    }

//     }

// System.debug('count value is : ' + count); 
// for(String eachKey: letterFrequencyMap.keySet()){
//     Integer count= letterFrequencyMap.get(eachKey);
//     if(count>2){
//         System.debug('ecahKey value is : ' + eachKey); 
//     }
// }




// 4. Given below Map 
   
//    Map<Integer, String> romanNumerals = new Map<Integer, String>{
//         1 => 'I',
//         2 => 'II',
//         3 => 'III',
//         4 => 'IV',
//         5 => 'V'
//     };
    

//     - Create a new Map<String, Integer> 
//       - store the key into the value of above Map
//       - store the value into the key of above map
//       - print result should be {I=1,II=2,III=3,IV=5,V=5}
// Map<String,Integer> newMap=new Map<String,Integer>();
// for(Integer each: romanNumerals.keySet()){
//     newMap.put(romanNumerals.get(each), each);
// }
// System.debug('newMap value is : ' + newMap); 


// 5. Create a Map<Integer, String> and fill it up with 5 key-value pairs
//    -  Get the sum of All the Keys 
//    -  Join all the values by , and print it out 

// Map<Integer, String> newMap= new Map<Integer,String> {1=>'ja',2=>'ti',13=>'mi',4=>'vi',5=>'oni'};
// Integer sum=0;
// for(Integer each:newMap.keySet()){
//     sum+=each;
// }
// System.debug('sum value is : ' + sum); 
// List<String> valList= newMap.values();
// System.debug('valList value is : ' + valList); 
// String joined= String.join(valList, ',');
// System.debug('joined value is : ' + joined); 
// 6. Write a program that create a Map<String, Integer>  with 9 values
//    - Create a new map that contains only the keys and values where the value is greater than 10 from first Map.


// Map <String,Integer> oldMap = new Map <String,Integer>();
// oldMap.put('Apple', 5);
// oldMap.put('Orange', 4);
// oldMap.put('Grape', 8);
// oldMap.put('Strawberry', 15);
// oldMap.put('Banana', 2);
// oldMap.put('Applee', 5);
// oldMap.put('Orangee', 4);
// oldMap.put('Grapee', 8);
// oldMap.put('Strawberrye', 11);

// Map<String,Integer> newMap= new Map<String,Integer>();
// for(String each:oldMap.keySet()){
//     if(oldMap.get(each)>10){
//         newMap.put(each, oldMap.get(each));
//     }
// }
// System.debug('newMap value is : ' + newMap); 
// 7. Map Practice : MapBully (NO LOOP NEEDED)
//    -  Given A Map with key values in it with a.b,c as key and String as values
//    -  for example : {'a'=>'candy', 'b'=>'dirt'}
//    -  Follow below requirement to update the Map 
//    -  if the key a has a value (not null), 
//       -  set the key b to have that value
//       -  and set the a to have value nothing 
//       -  basically b is a bully , taking the value and replacing it with the nothing.
//    -  You should get this result {a=nothing,b=candy}
//    -  another example , map with below value should get updated as below
//    -  {'a' => 'candy'}  should be updated to this when you print 
//       -  updated Map : {a=nothing,b=candy}
//    -  another example , map with below value should get updated as below
//    -  {'a'=>'candy', 'b'=> 'carrot', 'c': 'meh'}
//       -  updated map : {a=nothing,b=candy,c=meh} (edited)

// Map<String,String> letterMap = new Map<String,String>{'a'=>'candy',
//                                                     'b' =>'baloon'  
//                                                 };
//   if(letterMap.get('a')!=null){
//     letterMap.put('b', letterMap.get('a'));
//     letterMap.put('a', 'nothing');
//   }                                              
// System.debug('letterMap value is : ' + letterMap); 
// 8.  Map Practice : MapShare (NO LOOP NEEDED)
//    -  Given A Map with key values in it with a.b,c as key and String as values
//    -  for example : {'a'=>'candy', 'b'=>'dirt','c'=>'cccc'}
//    -  if the key a has a value 
//       -  set the key b to have the same value
//    -  in all cases remove key c leaving the rest of the map unchanged 
//    -  so final print result according to this logic will be
//    -  updated Map : {a=candy, b=candy}
//    -  for example : {'b'=>'dirt','c'=>'cccc'} , print the result will be
//       -  updated Map : {b=candy}
//    -  for example : {'a'=>'aaa', 'c'=>'meh','d'=>'hi'} , print result
//       -  updated Map : {a=aaa, b=aaa, d=hi}
// Map<String,String> letterMap = new Map<String,String>{'a'=>'candy',
//                                                     'b' =>'baloon',
//                                                     'c'=>'chair'  
//                                                 };
//     if(letterMap.get('a')!=null){
//         letterMap.put('b',letterMap.get('a'));
//         letterMap.remove('c');
//     }

// System.debug('letterMap value is : ' + letterMap); 

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
// Opportunity o1= new Opportunity( Name ='new1', StageName='closed won', CloseDate=date.today(), Amount= 500000);
// Opportunity o2= new Opportunity( Name ='new2', StageName='closed lost', CloseDate=date.today() , Amount=8985);
// Opportunity o3= new Opportunity( Name ='new3', StageName='closed won', CloseDate=date.today(), Amount=789);
// Opportunity o4= new Opportunity( Name ='new4', StageName='closed lost', CloseDate=date.today(), Amount=456997);
// Opportunity o5= new Opportunity( Name ='new5', StageName='closed won', CloseDate=date.today(), Amount=789654);

// List<Opportunity> oppList= new List<Opportunity> {o1,o2,o3,o4,o5};

// insert oppList;
// map<Id,Opportunity> newMap= new map<Id,Opportunity>(oppList);
// System.debug('newMap value is : ' + newMap); 
// Map<String,Decimal> newNewMap= new Map<String,Decimal>();
// for(Opportunity each: oppList){
//     newNewMap.put(each.Name, each.Amount);
// }

// System.debug('newNewMap value is : ' + newNewMap); 
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
// List<Contact> contactList= new List<Contact>();
// for(Integer i=1; i<=5;i++){
//     contactList.add(new Contact(LastName='Test Contact'+i, Birthdate= date.newInstance(1987, 05, i)));
// }
// System.debug('contactList value is : ' + contactList); 

// insert contactList;
// Map<Id,Contact>newMap= new Map<Id,Contact>();
// for(Contact each: contactList){
//     newMap.put(each.Id, each);
// }
// System.debug('newMap value is : ' + newMap); 

// 11. Create List<Case> with 4 Items with name oldList 
//      - with below fields
//        - Subject set to Sample Case (1,2,3,4)
//      - insert into Salesforce
//    - Create a Map<ID, Case> from above List call it oldMap
//      - It should contain ID of case as key, the Case itself as value
//    - Print out the oldList variable 
//      - Observe It should be the List with ID generated
//    - Print out the oldMap  variable 
//      - Observe key is ID and value is Record itself

//    - Create a new List<Case> called newList
//      - Copy everything from oldList into newList in one shot
//    - Now Iterate over your newList with 4 copied Items above
//      - Update the Subject field value to 
//        - Whatever is the current Value followed by string  New
//        - So it will Sample Case (1,2,3,4) New
//      - Issue a DML statement to reflect the changes in Salesforce
//    - Create a Map<ID, Case> from above List call it newMap
//       - It should contain ID of case as key, the Case itself as value

//    - Print out the newList variable 
//      - Observe It should be the List after the update
//    - Print out the newMap  variable 
//      - Observe It should be the Map after the update
List<Case> oldList= new List<Case> ();
for(Integer i=1; i<=4; i++){
    oldList.add(new Case(Subject='Sample Case'+i));
} 

insert oldList;
System.debug('oldList value is : ' + oldList); 
Map<Id, Case> oldMap= new Map<Id, Case> ();
for(Case each: oldList){
    oldMap.put(each.Id, each);
}
System.debug('oldMap value is : ' + oldMap); 
List<Case> newList= new List<Case>(oldList);
System.debug('newList value is : ' + newList); 
for(Case each:newList){
    each.Subject=each.Subject + 'new';
}
System.debug('newList value is : ' + newList); 
update newList;
Map<Id,Case> newMap=new Map<Id,Case>();
for(Case each: newList){
    newMap.put(each.Id, each);
}
System.debug('newMap value is : ' + newMap); 

// oldList value is : (Case:{Subject=Sample Case1, Id=500Dn000006Bi1EIAS}, Case:{Subject=Sample Case2, Id=500Dn000006Bi1FIAS}, Case:{Subject=Sample Case3, Id=500Dn000006Bi1GIAS}, Case:{Subject=Sample Case4, Id=500Dn000006Bi1HIAS})
// oldMap value is : {500Dn000006Bi1EIAS=Case:{Subject=Sample Case1, Id=500Dn000006Bi1EIAS}, 500Dn000006Bi1FIAS=Case:{Subject=Sample Case2, Id=500Dn000006Bi1FIAS}, 500Dn000006Bi1GIAS=Case:{Subject=Sample Case3, Id=500Dn000006Bi1GIAS}, 500Dn000006Bi1HIAS=Case:{Subject=Sample Case4, Id=500Dn000006Bi1HIAS}}
// newList value is : (Case:{Subject=Sample Case1, Id=500Dn000006Bi1EIAS}, Case:{Subject=Sample Case2, Id=500Dn000006Bi1FIAS}, Case:{Subject=Sample Case3, Id=500Dn000006Bi1GIAS}, Case:{Subject=Sample Case4, Id=500Dn000006Bi1HIAS})
// newList value is : (Case:{Subject=Sample Case1new, Id=500Dn000006Bi1EIAS}, Case:{Subject=Sample Case2new, Id=500Dn000006Bi1FIAS}, Case:{Subject=Sample Case3new, Id=500Dn000006Bi1GIAS}, Case:{Subject=Sample Case4new, Id=500Dn000006Bi1HIAS})
// newMap value is : {500Dn000006Bi1EIAS=Case:{Subject=Sample Case1new, Id=500Dn000006Bi1EIAS}, 500Dn000006Bi1FIAS=Case:{Subject=Sample Case2new, Id=500Dn000006Bi1FIAS}, 500Dn000006Bi1GIAS=Case:{Subject=Sample Case3new, Id=500Dn000006Bi1GIAS}, 500Dn000006Bi1HIAS=Case:{Subject=Sample Case4new, Id=500Dn000006Bi1HIAS}}

// oldList value is : (Case:{Subject=Sample Case 1, Id=500Dn000006Bi1YIAS}, Case:{Subject=Sample Case 2, Id=500Dn000006Bi1ZIAS}, Case:{Subject=Sample Case 3, Id=500Dn000006Bi1aIAC}, Case:{Subject=Sample Case 4, Id=500Dn000006Bi1bIAC})
// oldMap value is : {500Dn000006Bi1YIAS=Case:{Subject=Sample Case 1, Id=500Dn000006Bi1YIAS}, 500Dn000006Bi1ZIAS=Case:{Subject=Sample Case 2, Id=500Dn000006Bi1ZIAS}, 500Dn000006Bi1aIAC=Case:{Subject=Sample Case 3, Id=500Dn000006Bi1aIAC}, 500Dn000006Bi1bIAC=Case:{Subject=Sample Case 4, Id=500Dn000006Bi1bIAC}}
// newList value is : (Case:{Subject=Sample Case 1 New, Id=500Dn000006Bi1YIAS}, Case:{Subject=Sample Case 2 New, Id=500Dn000006Bi1ZIAS}, Case:{Subject=Sample Case 3 New, Id=500Dn000006Bi1aIAC}, Case:{Subject=Sample Case 4 New, Id=500Dn000006Bi1bIAC})
// newMap value is : {500Dn000006Bi1YIAS=Case:{Subject=Sample Case 1 New, Id=500Dn000006Bi1YIAS}, 500Dn000006Bi1ZIAS=Case:{Subject=Sample Case 2 New, Id=500Dn000006Bi1ZIAS}, 500Dn000006Bi1aIAC=Case:{Subject=Sample Case 3 New, Id=500Dn000006Bi1aIAC}, 500Dn000006Bi1bIAC=Case:{Subject=Sample Case 4 New, Id=500Dn000006Bi1bIAC}}