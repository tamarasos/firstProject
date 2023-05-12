
// 2. Create a String variable called message that contains a sentence with mixed case. 
// for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
//    - split to get List of String containing each words
//    - use for loop to go though each items
//       - make each item TitleCase (lookup capitalize method from String class)
//       - make sure to assign it back to yourList[i] so it actually update your list item
//    - outside your loop , print out to see latest change
//    - join the list items with space 
//       => re-assign back to the String variable message
//       => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 

// String message= 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';
// List<String> splList= message.split(' ');
// System.debug('splList value is : ' + splList); 
// for(Integer i=0; i<splList.size();i++){
//     String each= splList.get(i);
//     each=each.toLowerCase().capitalize();
//     splList.set(i, each);
// }
// System.debug('spl value is : ' + splList); 
// String joined = String.join(splList, ' ');
// System.debug('SplList1 value is : ' + joined); 
// message= String.join(splList, ' ');
// System.debug('message value is : ' + message); 

// String message = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';

// List<String> messageList = message.split(' ');

// for (Integer i = 0; i < messageList.size(); i++) {
//   String each = messageList.get(i).toLowerCase().capitalize();
//   messageList.set(i, each);
// }
// System.debug(messageList);

// message = String.join(messageList, ' ');
// System.debug(message);

// OR

// String message = 'Even MIRACLes takeS A Little TIme';
// List<String> wordList = message.split(' ');
// System.debug(wordList);

// ////capitalize(): Returns the current String with the first letter changed to title case.
// for(Integer i = 0; i<=wordList.size()-1; i++){
//     String TitleCased = wordList.get(i).toLowerCase().capitalize();
//     wordList.set(i, TitleCased);

// }
// System.debug(wordList);

// //join(iterableObj, separator): Joins the elements of the specified iterable object, such as a List, into a single String separated by the specified separator

// message = String.join(wordList, '*');
// System.debug(message);
