// 6. Create a String variable with value 
//    - print out the length of the String 
//    - print out the last character index
//    - print out index of second character from the last
//    - split the string by empty String to get List of all characters
//    - loop through each item and get the count of 'a'
//    - now read the doc and try out countMatch method

String name='peraaa';
System.debug(name.length()); 
System.debug('last caracter index value is : ' + (name.length()-1));  
System.debug('index of second last character: ' +( name.length()-2)); 
System.debug('name.split value is : ' + name.split(''));
List<String> allChar=name.split('');
System.debug('allChr value is : ' + allChar); 
Integer count=0;
for(String each:allChar){
    if(each.containsAny('a')){
        count++;
    }
}
System.debug('count value is : ' + count); 

String name='tamara';
System.debug('name.length() value is : ' + name.length()); 
System.debug('name.length() value is : ' + (name.length()-1)); 
System.debug('name.right(2) value is : ' + name.indexOf(name.right(2).left(1))); 
List<String> allChar=name.split('');
System.debug('allChr value is : ' + allChar); 
Integer count=0;
for(String each:allChar){
if(each=='a'){
    count++;
}
}
System.debug('count value is : ' + count); 
System.debug('name.countMatch(value is : ' + name.countMatches('a')); 










// String name = 'Ananas';
//  System.debug('Length of String is: ' + name.length()); 
//  System.debug('last character of String : ' + name.right(1));
//  System.debug('last character of String : ' + name.right(2).substringBefore(name.right(1)));
//  List<String> nameSplit = name.split('');
//  Integer count =0;
//  for(String eachName : nameSplit) {
//   if(eachName == 'a'){
// count++;
//   }
//  }
  
// System.debug('Count of letter A is : ' + count); 
// System.debug('Count Match result is : ' + name.toLowerCase('A').countMatches('a')); 