// 8. Create a String with a long sentence
//    - split the sentence to get word list 
//    - create a variable called longestCharCount
//    - assign it's value to first item length
//    - loop through each item 
//       - use Math.max(longestCharCount, each.length() )
//    - outside your loop , print to see the result of longestCharCount


String sentence= 'I want to make sure that I will be rich and successful';
System.debug('sentence.split(\' \') value is : ' + sentence.split(' ')); 
List<String> words=sentence.split(' ');
System.debug('words value is : ' + words); 
Integer longestCharCount= words.get(0).length();

for(String each:words){
   longestCharCount=  Math.max( longestCharCount, each.length());

}



System.debug('words.length() value is : ' + longestCharCount ); 