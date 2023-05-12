// 5. Create a string variable containing an email address, 
//    - for example jonsnow@nightwatch.com
//    - store the index of the '@' character in the email address.
//    - print out the part before '@' in uppercase
//    - print out whatever is after '@' 
//    - print out last 3 characters

String emailAddress=' tamara.sosevic@yahoo.com' ;
System.debug(emailAddress.indexOf('@'));

System.debug(emailAddress.left(15).toUpperCase()); 

System.debug(emailAddress.right(emailAddress.length()-emailAddress.indexOf('@')-1)); 

System.debug(emailAddress.right(3)); 

