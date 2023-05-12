/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 

//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the character count inside the String 
System.debug('message.length() value is : ' + message.length() ); 

// isEmpty(yourStringHere) method ; return true if it's not '' or null else false 

System.debug('String.isEmpty(message) value is : ' + String.isEmpty(message)  ); 

String msg1 = '    ' ; 
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1)  ); 

// isBlank method : Returns true if the specified String is white space, empty (''), or null; otherwise, returns false.
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)  ); 

// toUpperCase()   return the UPPERCASE version of the text 
System.debug('message.toUpperCase() value is : ' + message.toUpperCase() ); 


// toLowerCase()   return the lowercase version of the text 
System.debug('message.toLowerCase() value is : ' + message.toLowerCase() ); 
String season = 'summer' ; 

switch on season.toUpperCase()  {

    when 'SPRING' {
        System.debug('value Spring match');
    }
    when 'SUMMER' {
        System.debug('value Summer match');
    }
    when 'FALL' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}

// -------------- Checking for String contains some substring
/**
contains(substring) 
Returns true if and only if the String that called the method contains the specified sequence of
characters in substring.

Example :
'abcd' contains 'ab'  true
'abcd' contains 'ac'  false

*/
System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
System.debug('message.contains(\'hello\')  value is : ' + message.contains('hello') ); 

System.debug('message.contains(\'Jon\')  value is : ' + message.contains('Jon') );


/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello') ); 
/**
containsNone(inputString)
Returns true if the current String doesn’t contain any of the characters in the specified String; otherwise, returns false.
 */
System.debug('message.containsNone(\'Hlo\') value is : ' 
                                + message.containsNone('Hlo')   ); 
                      // false because we have all of teh characters 

System.debug('message.containsNone(\'AB\') value is : ' 
                                + message.containsNone('AB')   ); 
                      // true because we do not have A or B 
System.debug('message.containsNone(\'LO\') value is : ' 
                                + message.containsNone('LO')   ); 
                       // true because we do not have L or O 

System.debug('message has no Number : ' + message.containsNone('0123456789')   ) ; //false

System.debug('------InputString------------');
/**
containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence of characters and not any other characters; otherwise, returns false.
 */
// Hello world is made of these characters  : Helo Wrd 

System.debug('message.containsOnly(\'Helowrd \') value is : ' 
                                    + message.containsOnly('HeloWrd ')); 

System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); 

System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC'))

String text = 'aaaaoooeee'; 
System.debug('text variable value is : ' + text); 
// check if this text only contains vowel : a e o u i 
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')  ); 

System.debug('-------Equality-----------');
System.debug('is message == Hello World ' +   (message =='Hello World')); // true
System.debug('is message == hello world ' +   (message =='hello world')); // true

// equals (anotherString) method for checking equality in case sensitive manner

/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText);




