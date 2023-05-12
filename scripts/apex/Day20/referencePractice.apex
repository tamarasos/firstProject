// Case c1 = new Case(Subject = 'My Case');
// insert c1;
// System.debug('c1 value is : ' + c1); 
// // create a variable c2 and assign the value to whatever the value of c1

// Case c2 = c1;
// System.debug('c2 value is : ' + c2); 

// c2.Subject = 'The guy over the wall';

// // print out c1 and c2 subject before inserting
// System.debug('c1.Subject value before update DML is : ' + c1.Subject); 
// System.debug('c2.Subject value before update DML is : ' + c2.Subject); 
// c1.Subject = 'blabla';
// System.debug('c1 value is : ' + c1); 
// System.debug('c2 value is : ' + c2); 



// Given a String variable message contains long string 
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

String message = 'aaabbcccccddhhhhhhzzzz';
List<String> charList= message.split('');
System.debug('message value is : ' + message); 
System.debug('charList value is : ' + charList); 
Map<String,Integer> letterFrequencyMap = new Map<String,Integer>();

for(String eachChar:charList){
    // System.debug('each value is : ' + each); 
    if(!letterFrequencyMap.containsKey(eachChar)){
        letterFrequencyMap.put(eachChar,1);
    }else{

    }
}

