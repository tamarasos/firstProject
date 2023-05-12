String season = 'january';
if (season =='summer'){
    System.debug('Go Swimming');
} else if (season =='spring'){
    System.debug('Go Camping');
} else if (season =='fall'){
    System.debug('Go pick pumpkin');
} else if (season =='winter'){
    System.debug('Go to sleep');
}else {
    System.debug('Invalid season');
}


/*TASK 1

Declare three integers and initialize their values
checks if the first number is greater than the second number and the second number is greater than the third number. 
If this is true, the program should print "The first number is the largest." 
If not, the program should print "The first number is not the largest."
*/
Integer num1 = 10, num2 =20, num3 =30;
if (num1>num2 && num1>num3){
    System.debug('The first number is the largest.');
}else { 
    System.debug('The first number is not the largest.');
}


/*TASK 2
    
Declare and initialize an Integer variable. 
checks if a given integer is positive, negative, or zero. 
If the number is positive, the program should print "Positive." 
If the number is negative, the program should print “negative”
Else print Zero
*/

/*
Integer num1 = 0;
if (num1 >0){
    System.debug('Positive');
}else if (num1<0){
    System.debug('Negative');
}else 
    System.debug('Zero');

/*TASK 3
Declare and initialize a String variable with one character
check the if character is vowel 'a' , 'e', 'o' , 'u' , 'i'
if true print it's a vowel 
else print it's not a vowel!
*/

String letter= 'u';
if (letter == 'a'){
    System.debug('it is a vowel' );
}else if (letter== 'e'){
    System.debug('it is a vowel');
   
}else if (letter=='o'){
    System.debug('it is a vowel');
} else if (letter=='u'){
    System.debug('it is a vowel');
}else if (letter=='u'){
   System.debug('it is a vowel');
}else
    System.debug(' it\'s not a vowel');
    

    /*TASK 4
Declare and initialize two variables 
opportunityAmount as Integer 
stage as String 
if an opportunityAmount is greater than $100,000 and stage is Closed Won 
    then print out "High Priority Opportunity, follow up immediately ".
else print out  create an task to follow up next week 
*/

Integer opportunityAmmount = 150000;
String stage= 'Closed Won';
if (opportunityAmmount >100000 && stage=='Closed Won'){
    System.debug('High Priority Opportunity, follow up immediately');
} else
    System.debug('create an task to follow up next week ');


/*TASK 5
Declare and initialize variables as below 
leadCompanySize as String 
checks if a Lead's Company size is either "Small" or "Medium". 
If either of these conditions are met, 
print a message that says "Good Lead" 
else take no action 
*/

String leadCompanySize = 'medium';
if (leadCompanySize == 'Small' || leadCompanySize=='Medium'){
    System.debug('Good Lead');
}


/*TASK 6
Declare and initialize variables as below 
annualRevenue as Long 
numberOfEmployees as Integer

checks if an Account's Annual Revenue is greater than $1,000,000 or if its Number of Employees is greater than 500. 
If either of these conditions are met, display a message that says "High Potential Account".
else display "Not a High Potential Account"
*/
Long annualRevenue= 600000;
Integer numberOfEmployees= 300 ;

if (annualRevenue > 1000000 || numberOfEmployees >500 ){
    System.debug('High Potential Account');
}else
    System.debug('Not a High Potential Account');


  /*  TASK 7
Declare 3 Integer variavles and initialize their values. 
Write a code to print out the largest number by comparing them with each other. 

*/

Integer num1 = 30, num2=25, num3 =20;

if (num1>num2){
    System.debug(num1);
} else if (num2>num1){
    System.debug(num2);
}else if (num1>num3){
    System.debug(num1);
}else if (num3>num1){
    System.debug(num3);
}else if (num2>num3){
    System.debug(num2);
}else if (num3>num2){
    System.debug(num3);
}

/* you can do it this way
(num1>num2 && num1>num3)
(num2>num1 && num2>num3
(num3>num1 && num3>num2)


/*
if (num3>num2 && num3 >num1){
    System.debug(num3);
}else if (num2>num2 && num2>num3){
    System.debug(num2);
}else {
    System.debug(num1);
}
*/