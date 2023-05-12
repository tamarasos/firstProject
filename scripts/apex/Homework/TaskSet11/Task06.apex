// 6. Write a program that create a Map<String, Integer>  with 9 values
//    - Create a new map that contains only the keys and values where the value is greater than 10 from first Map.


Map <String,Integer> oldMap = new Map <String,Integer>();
oldMap.put('Apple', 5);
oldMap.put('Orange', 4);
oldMap.put('Grape', 8);
oldMap.put('Strawberry', 10);
oldMap.put('Banana', 2);
oldMap.put('Applee', 5);
oldMap.put('Orangee', 4);
oldMap.put('Grapee', 8);
oldMap.put('Strawberrye', 11);

Map<String, Integer> newMap = new Map<String, Integer>();

for(String eachKey: oldMap.keySet()){
    if(oldMap.get(eachKey)>10){
        newMap.put(eachKey, oldMap.get(eachKey));
    }
}
System.debug('newMap value is : ' + newMap); 






