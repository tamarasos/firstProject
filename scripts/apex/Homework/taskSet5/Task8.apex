// Write a program that create a list of strings and print the values that are not equal 
// /to 'salesforce'
//  using a for loop and the continue keyword.

 List<String> newList=new List<String>{'java','c++', 'javasc','salesforce', 'apex', 'loop', 'noloop', 'data'};

for(String each: newList){
    if(each=='salesforce'){
        continue;
    }
    System.debug(each);
}