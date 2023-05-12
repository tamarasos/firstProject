// 7. Create a String with a long sentence
//    - print out the word count in sentence
//    - loop through each item and reverse it 
//    - outside your loop , print to see the result

String longSent ='I want to make sure that I will be rich and successful';
System.debug('longSent.split( value is : ' + longSent.split(' ')); 
List<String> words=longSent.split(' ');
Integer count=0;
List<String> reversedLst = new List<String>();
// reversedLst.add(YourValueHere); 

for(String each:words){
count++;
each.reverse();
reversedLst.add(each.reverse());
System.debug('each.reverse() value is : ' + each.reverse()); 
}
System.debug('count value is : ' + count); 

System.debug('words.reverse() value is : ' + reversedLst); 

// String sentence = 'I love Salesforce Apex Programming Language';
// System.debug('sentence value is : ' + sentence); 
// //    - print out the word count in sentence
// List<String> wordList = sentence.split(' '); 
// //    - loop through each item and reverse the word
// for(Integer i=0; i<wordList.size() ; i++) {
//    // System.debug('Value at index #'+ i +' is :' + wordList.get(i) );
//    wordList[i] = wordList[i].reverse();
// }

// //    - outside your loop , print to see the result
// System.debug('wordList value is : ' + wordList); 
