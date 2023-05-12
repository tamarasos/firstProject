// . Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
// (try out the same with while loop and do while loop as practice)

// Integer sum = 0;
// for(Integer i=1; i<=100; i++){
//     if(math.mod(i, 2)==1){
//         sum+=i;
//           System.debug('sum value is : ' + sum); 
//     }

// }
  
// // practice List using similar approach 
// 2. Write a program that store the even numbers from 1 to 20 into List of Integer

//   then write an apex code to get the sum of all items in the list. 
// Integer sum=0;
// List<Integer> numList= new List<Integer> ();
// for(Integer i=1; i<=20; i++){
//     if(math.mod(i,2)==0){
//         sum+=i;
// // numList.add(i);

//     }
// }
// // System.debug('numList value is : ' + numList); 
// System.debug('sum value is : ' + sum); 


// 3. Write a program that store 10 random Decimal numbers in List of Decimal
//    print out the size of the list 
//    print out the sum of all numbers
//    print out the average of all numbers 
//    now try to go back to the code where you added elements , add more items into the list and run your program again to see if it works. 
// List<Decimal> randomList= new List<Decimal> ();
// randomList.add(math.random());

// for(Integer i= 1; i<=10; i++){

// randomList.add(math.random()*100);

// }
// System.debug('randomList value is : ' + randomList); 
// System.debug('randomList.size() value is : ' + randomList.size()); 

//  Decimal sum=0;
//  Decimal average = 0;
//     for (Decimal eachNumber: randomList){

//      sum+=eachNumber;
//     average=sum/randomList.size();
//    }
//    System.debug(sum);
//    System.debug('average value is : ' + average); 




// 4. Write a program that store 10 Long(data type) values into List of Long 
//    (it should be combination of positive and negative numbers) 

//    print out the sum of positive numbers 
//    print out the count of positive numbers 
//    print out the count of negative numbers 
// List<Long> longList = new List<Long> {12l,58l,-23l,-88l,69l,-14l,32l,89l,-74l,36l};
// // Long sum=0;
// // Integer count=0;
// // for(Long each: longList){
// //     if(each>0){
// //         sum+=each;
//         count++;
//     }
// }
// System.debug('sum value is : ' + sum); 
// System.debug('count value is : ' + count); 

// Integer count=0;
// for(Long each: longList){
//     if(each<0){
        
//         count++;
//     }
// }

// System.debug('count value is : ' + count); 


// 5. Create a List of 10 names into List of String with some duplicate value 
//    find out how many unique names showed up in the list using below approach
//    1. create an empty Set of String 
//    2. Iterate over names List using for each loop
//    3. use add method of Set to add each items into Set
//    4. outside the loop print out the size of set

// List<String> names= new List<String>{ 'mara','sara','lara','cara','bara','laki','pera','mara','lara','sara'};
// Set<String> emptyNames= new Set<String> ();
// for(String eachName: names){

//         emptyNames.add(eachName);
    
// }
// System.debug('emptyNames value is : ' + emptyNames); 
// System.debug('emptyNames.size() value is : ' + emptyNames.size()); 

// 6. Write a program that can create X sample List name according to given number as below 
//   1. create a variable called leadCount as Integer and initialize to 4
//   2. create a empty List of String 
//   3. use for loop to add items to List to generate as below 
    
//     Sample Lead 1
//     Sample Lead 2
//     Sample Lead 3
//     Sample Lead 4
// Integer leadCount= 7;
// List<String> emptyList = new List<String>();
// for(Integer i=1; i<=leadCount; i++){
//     emptyList.add('sample lead'+ i);
// }

//     System.debug('emptyList value is : ' + emptyList); 
//     System.debug('emptyList.size() value is : ' + emptyList.size()); 

//   4. print out the List variable and the size 
//   5. try changing the leadCount and run your code again 

// 7. Similar to above task 
//   1. now create two String variables to store firstName and lastName
//   2. create a variable called leadCount as Integer and initialize to 5
//   2. Create an empty List of String 
//   3. using loop generate sample lead email in below format and add it to the list
  
//   firstNameValue+lastNameValue_1@force.com
//   firstNameValue+lastNameValue_2@force.com
//   firstNameValue+lastNameValue_3@force.com
//   firstNameValue+lastNameValue_4@force.com
//   firstNameValue+lastNameValue_5@force.com
  

// //   4. try changing the leadCount and run your code again 
// // String firstName= 'tamara', lastName='sos';
// Integer leadCount= 9;
// List<String> empty = new List<String>();

// for(Integer i=1; i<=leadCount; i++){
//     System.debug(firstName + lastName + '_' + i + '@force.com'); 
// }


// 8. Create a program that take some item from One List to Another according to the condition 
//   1. Create List of Integer with 9 elements|items 
//   2. Create another empty List of Integer 
//   3. Iterate over the first List using for each loop 
//     - check if the number is between 5-10 
//       - if so add this number to second list using secondList.add(itemHere) ; 

//   4. Print out the first List 
//   5. Print out the second List and it's size
// List<Integer> fullList = new List<Integer>{79,98,6,51,29,45,8,69,74};
// List<Integer> emptyList = new List<Integer>();
// for(Integer each: fullList){
//     if(each>5 && each<10){
//         emptyList.add(each);
//     }
// }
// System.debug('emptyList value is : ' + emptyList); 

// 9. Write a program that takes a list of strings that represent the names of account owners, and counts the number of times jon snow appears in the list.

// List<String> accList = new List<String> { 'jon', 'mon','son','von','jon','jon'};
// Integer count =0;
// for(String each: accList){
//     if(each=='jon'){
//         count++;
       
//     }
   
// }
//   System.debug('each value is : ' + count); 
// // 10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, and calculates the number of users who
//  spent more than a certain amount (like 10000) of money.
// in another word, create a list of Integer and get the count of numbers that over 10000 
// List<Integer> spendingList = new List<Integer>{5700,9400,1500,60008,430000};
// Integer count=0;
// for(Integer each: spendingList){
// if(each>10000){
//     count++;
// }
// }
// System.debug('count value is : ' + count); 

