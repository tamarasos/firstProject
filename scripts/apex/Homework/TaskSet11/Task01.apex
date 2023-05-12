// 1. Create a Map<String, Integer> to store group name and member count
Map<String,Integer> groupNumber = new Map<String,Integer> ();
//    -  Add 5 items into this Map 
groupNumber.put('Group1',9);
groupNumber.put('Group2',7);
groupNumber.put('Group3',8);
groupNumber.put('Group4',11);
groupNumber.put('Winterfell Vacation',10);

//    -  Check if there is a group called Apex Soldiers 
//       -  print out the result in boolean 
    System.debug('myVar value is : ' + groupNumber.containsKey('Apex Soldiers'));     
//    -  Check if there is a group called Winterfell Vacation
        if(groupNumber.containsKey('Winterfell Vacation')){
//       -  if so , store the value into a Variable called vMemberCount
Integer vMemberCount= groupNumber.get('Winterfell Vacation');
// -  remove this group from the map 
groupNumber.remove('Winterfell Vacation');
//          
//          -  add new item to the map with below key-value pair
        groupNumber.put('Winterfell Coders', vMemberCount);
//             -  Winterfell Coders as key , value of vMemberCount as value
 System.debug('myVar value is : ' + vMemberCount); 
        }
        System.debug('groupNumber value is : ' + groupNumber); 
       
//    -  Check if there is a group with 10 members

Set<String> strList = groupNumber.keySet();
System.debug('strList value is : ' + strList); 

for(String eachKey : groupNumber.keySet()){
    if(groupNumber.get(eachKey)==10){
        groupNumber.put(eachKey,9);
    }
}
System.debug('groupNumber value is : ' + groupNumber); 
