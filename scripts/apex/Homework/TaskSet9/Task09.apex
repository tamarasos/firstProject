
// 9. Create a String variable with the value 
//    - check if the value is palindrome or not 
//    - palindrome read the same from forward or backward 
//    - for example anna , hanna , racecar, mom
//    - do case-sensitive check!

String name= 'anas';
String nameReversed=name.reverse();
if(name==name.reverse()){
   System.debug('is palindrome'); 
}else{
    System.debug('is not palindrome'); 
}