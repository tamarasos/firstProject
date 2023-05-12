// 5. Create a Map<Integer, String> and fill it up with 5 key-value pairs
//    -  Get the sum of All the Keys 
//    -  Join all the values by , and print it out 


Map <Integer, String> vegeMap = new Map <Integer, String>{ 5 => 'apple',
6=>'orange',
10=>'peach',
25=>'lemon',
11=>'banana'};

System.debug('yearsMap value is : ' + vegeMap); 

Integer sum=0;
for(Integer each: vegeMap.keySet()){
sum+=each;
System.debug('myVar value is : ' + sum); 
}
System.debug('myVar value is : ' + sum); 

String joinedValues = String.join(vegeMap.values(), ',');

System.debug('wordList value is : ' + joinedValues); 

