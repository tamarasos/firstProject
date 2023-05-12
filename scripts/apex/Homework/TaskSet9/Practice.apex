// . Create a variable contains your full name
//    - print it out in uppercase
//    - print it out in lowercase
//    - find the index of space and print
//    - print first char of first and last name together :initials


// String fullName= 'tamara sosevic';
// System.debug('fullName.toUpperCase() value is : ' + fullName.toUpperCase()); 
// System.debug('fullName.toLowerCase() value is : ' + fullName.toLowerCase()); 
// System.debug('indexOfvalue is : ' + fullName.indexOf(' ')); 
// system.debug(fullName.left(1) + fullName.mid(fullName.indexOf(' ')+1, 1));


// 2. Create a List of 10 String
//    - get the count of String with more than 5 characters
//    - print them out

// List<String> names = new List<String>{'mara','lara','sarvva','darvva','pevvvra','laza','mvvvika','bikgvva','tika','vika'};
// Integer count=0;
// for(string each: names){
//     if(each.length()>5){
//         count++;
//         System.debug('each value is : ' + each); 
//     }
// }
// System.debug('count value is : ' + count); 


// 3. Create a List of 10 String
//    - get the count of String even character count
//    - print them out

// anagrams words contain the same letters in a different order
// for example : late , tale , teal

// List<String> names = new List<String>{'mara','lara','sarvva','darvva','pevvvra','laza','mvvvika','bikgvva','tika','vika'};
// Integer count=0;
// for(String each: names){
//     if(math.mod(each.length(),2)==0){
//         count++;
//     }
// }
// System.debug('count value is : ' + count); 
// // 4. Write a program that 
//    - create two string variables with values
//    - print 'Its not anagram!!' they are the same' if they are equal
//    - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
//    - print 'Its not anagram!!'
//    - HINT : use containsOnly method twice on each other
// String value1= 'late';
// String value2= 'tales';
// if(value1==value2){
//     System.debug('its not anagram,they are the same'); 
// }else if(value1.containsOnly(value2) && value2.containsOnly(value1)){
//     System.debug('its anagram'); 
// }else {
//     System.debug('its not anagram'); 
// }


// String word1 = 'late' ; 
// String word2 = 'tale' ; 

// if(word1.containsOnly(word2) && word2.containsOnly(word1) ){
// //    - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
//    System.debug('Its anagram!!!'); 
// }else{
// //    - print 'Its not anagram!!'
//    System.debug('Its not anagram!!!'); 
// }
//    - HINT : use `containsOnly` method twice on each oth

// 5. Create a string variable containing an email address, 
//    - for example jonsnow@nightwatch.com
//    - store the index of the '@' character in the email address.
//    - print out the part before '@' in uppercase
//    - print out whatever is after '@' 
//    - print out last 3 characters
// String email= 'jonsnow@nightwatch.com';
// System.debug('indexOf(@) value is : ' + email.indexOf('@')); 
// System.debug(email.left(7).toUpperCase());
// System.debug('email.mid(email.indexOf(,email.length()-1)) value is : ' + email.mid(email.indexOf('@')+1,email.length()-1)); 
// System.debug('email.right(3) value is : ' + email.right(3)); 
// 6. Create a String variable with value 
//    - print out the length of the String 
//    - print out the last character index
//    - print out index of second character from the last
//    - split the string by empty String to get List of all characters
//    - loop through each item and get the count of 'a'
//    - now read the doc and try out countMatch method
// String name='tamara';
// System.debug('name.length() value is : ' + name.length()); 
// System.debug('name.length() value is : ' + (name.length()-1)); 
// System.debug('name.right(2) value is : ' + name.indexOf(name.right(2).left(1))); 
// List<String> allChar=name.split('');
// System.debug('allChr value is : ' + allChar); 
// Integer count=0;
// for(String each:allChar){
// if(each=='a'){
//     count++;
// }
// }
// System.debug('count value is : ' + count); 
// System.debug('name.countMatch(value is : ' + name.countMatches('a')); 

// 7. Create a String with a long sentence
//    - print out the word count in sentence
//    - loop through each item and reverse it 
//    - outside your loop , print to see the result


// String longSent ='I want to make sure that I will be rich and successful';
// System.debug('longSent.split( value is : ' + longSent.split(' ')); 
// List<String> words=longSent.split(' ');
// Integer count=0;
// List<String> reversedLst = new List<String>();
// // reversedLst.add(YourValueHere); 

// for(String each:words){
// count++;
// each.reverse();
// reversedLst.add(each.reverse());
// System.debug('each.reverse() value is : ' + each.reverse()); 
// }
// System.debug('count value is : ' + count); 

// System.debug('words.reverse() value is : ' + reversedLst); 

// // 8. Create a String with a long sentence
//    - split the sentence to get word list 
//    - create a variable called longestCharCount
//    - assign it's value to first item length
//    - loop through each item 
//       - use Math.max(longestCharCount, each.length() )
//    - outside your loop , print to see the result of longestCharCount

// String longSent ='want to make sure that I will be rich and successful';
// List<String> wordLst= longSent.split(' ');
// System.debug('wordLst value is : ' + wordLst); 
// Integer longestCharCount= wordLst.get(0).length();
// System.debug('longestCharCount value is : ' + longestCharCount); 
// for(String each:wordLst){
//     longestCharCount=math.max(longestCharCount, each.length());
// }
// System.debug('longestCharCount value is : ' + longestCharCount); 



// 9. Create a String variable with the value 
//    - check if the value is palindrome or not 
//    - palindrome read the same from forward or backward 
//    - for example anna , hanna , racecar, mom
//    - do case-sensitive check!
// String name= 'kayak';
// if(name==name.reverse()){
//     System.debug('its palindrome'); 
// }else{
//     System.debug('its not palindrome'); 
// }

// 10. Create a List of 5 String values 
//    - create a Boolean variable called isAllPalindrome and set to true
//    - loop through each item in the list 
//       - check if the word is palindrome or not 
//       - if it's not, set isAllPalindrome to false
// //       - else take no action (so no else)

// List<String> words=new List<String> {'pera','laza','mara','ana','sara'};
// Boolean isAllPalindrome= true;
// for(String each: words){
//     if(each!=each.reverse()){
// isAllPalindrome=false;

//     }
// }


Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts)
                               FROM Account 
                               WHERE Name = 'SFDC Computing'];
// Get child records
Contact[] cts = acctsWithContacts[1].Contacts;
System.debug('Name of first associated contact: ' 
             + cts[1].FirstName + ', ' + cts[1].LastName);
