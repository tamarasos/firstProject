// Write an Apex code that 
//    - create a variable to store 1 Random double between 0 to 100 Math.random()*100
//    - print it out 
//    - print 'pass' if the number is greater than 65
//    - print 'A+' if the number is between 95-100
//    - run multiple time to observer the result

Double randomDbl =  Math.random() * 100  ; 
System.debug('randomDbl value is : ' + randomDbl); 

if(randomDbl >65){
System.debug('pass'); 
}else if (randomDbl>95 && randomDbl<100){
    System.debug('A+'); 
}else{
    System.debug('try harder'); 
}



