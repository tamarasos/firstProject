
// 4. Write an Apex code that create 2 Random Integer variables 
//    - use Math.random()*100 to assign random values to both of them
//      - (make sure to convert the double value to Integer)
//    - print both variable values 
//    - print the larger number value

Double random1= Math.random()*100;
Double random2= Math.random()*100;
System.debug('random1 value is : ' + random1); 
System.debug('random2 value is : ' + random2); 

Integer randomInteger = random1.intValue();
System.debug('randomInteger value is : ' + randomInteger); 
Integer randomInteger2= random2.intValue();
System.debug('randomIntege2r value is : ' + randomInteger2); 

System.debug(Math.max(random1, random2));
System.debug(Math.max(randomInteger, randomInteger2));