
// 10. Create a List of 5 String values 
//    - create a Boolean variable called isAllPalindrome and set to true
//    - loop through each item in the list 
//       - check if the word is palindrome or not 
//       - if it's not, set isAllPalindrome to false
//       - else take no action (so no else)

List<String> words=new List<String> {'ana','aha','noon','mam','lol'};

Boolean isAllPalindrome=true;

for(String each:words){
        if(each!=each.reverse()){
            isAllPalindrome=false;
        }
}
System.debug('isAllPalindrome value is : ' + isAllPalindrome); 