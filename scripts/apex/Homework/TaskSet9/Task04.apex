// 4. Write a program that 
//    - create two string variables with values
//    - print 'Its not anagram!!' they are the same' if they are equal
//    - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
//    - print 'Its not anagram!!'
//    - HINT : use containsOnly method twice on each other

String name1='state';
String name2='taste';

if( name1==name2){
 System.debug('they are the same'); 
}else if(name1.containsOnly(name2)&& name2.containsOnly(name1)){
   System.debug('its anagram'); 
}else {
  System.debug(' its not anagram'); 
}


String word1 = 'late' ; 
String word2 = 'tale' ; 

if(word1.containsOnly(word2) && word2.containsOnly(word1) ){
//    - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   System.debug('Its anagram!!!'); 
}else{
//    - print 'Its not anagram!!'
   System.debug('Its not anagram!!!'); 
}
//    - HINT : use `containsOnly` method twice on each oth
