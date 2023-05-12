// 1. Write an Apex code that 
//    - create a variable to store 1 Random double between 0 to 100 Math.random()*100
//    - print it out 
//    - print 'pass' if the number is greater than 65
//    - print 'A+' if the number is between 95-100
//    - run multiple time to observer the result

// Integer randomNum=math.round( math.random()*100);
// System.debug('randomNum value is : ' + randomNum); 

// if(randomNum>65){
//   System.debug('pass'); 
// }else if( randomNum>95 && randomNum<100){
//     System.debug('A+'); 
// }else{
//     System.debug('nothing'); 
// }
// // 2. Write an Apex code that create 1 Random double between 0 to 100
// //    - print it out 
// //    - if the number is even -> print 'even number!!!' 
// //    - if it can be divided by 5 with no remainder -> print 'cool number'
// //    - if it can be divided by 7 with remainder 3  -> print 'cooler number' 
// Integer randomnum=(math.random()*100).intValue();
// System.debug('randomnum value is : ' + randomnum); 
// if(math.mod(randomnum, 2)==0){
//     System.debug('even num'); 
// }else if(math.mod(randomnum, 5)==0){
//     System.debug('cool number'); 
// }else if(math.mod(randomnum, 7)==3){
//     System.debug('cooler num'); 
// }else {System.debug('nothing'); }

// // 3. Write an Apex code that store list of 10 Integers 
// //    - print out all odd numbers
// //    - get the count of the odd numbers and print it out
// //    - get the sum of the odd numbers and print it out 
// List<Integer> numberList = new List<Integer>{11,23,53,99,82,88,32,45,97,45};
// Integer count=0;
// Integer sum=0;
// for(Integer each:numberList){
//     if(math.mod(each, 2)==1){
//         count++;
//         sum+=each;
//     }
// }
// System.debug('count value is : ' + count); 
// System.debug('sum value is : ' + sum); 

// // // 4. Write an Apex code that create 2 Random Integer variables 
// // //    - use Math.random()*100 to assign random values to both of them
// // //      - (make sure to convert the double value to Integer)
// // //    - print both variable values 
// // //    - print the larger number value

// // Integer random1=( math.random()*100).intValue();
// // Integer random2=( math.random()*100).intValue();
// // System.debug('random1 value is : ' + random1); 
// // System.debug('random2 value is : ' + random2); 
// // System.debug('math.mode(random1,random2) value is : ' + math.max(random1,random2)); 


// // 5. Write an Apex code that 
// //    - print 10 random Integer values between 1-1000 in 10 lines (loop)
// // for(Integer i=0; i<=10; i++){
// // Integer each=(math.random()*1000).intValue();

// // System.debug('each value is : ' + each); 
// // }

// // 6. Inspired by above code, 
// //    - Write an Apex code that 
// //      - store 10 random Integer values between 1-100 into a List of Integer
// //    - print out the value 
// //    - get the sum of the numbers 
// //    - get the average of the numbers
// // List<Integer> yourLstName = new List<Integer>();


// // for(Integer i=1;i<=10; i++){
// //     Integer random=(math.random()*100).intValue();
// // yourLstName.add(random);

// // }
// // System.debug('yourLstName value is : ' + yourLstName); 
// // Integer sum=0;
// // Integer average=0;
// // for(Integer each: yourLstName){
// // sum+=each;

// // }
// // System.debug('average=sum/yourLstName.size() value is : ' + sum/yourLstName.size()); 
// // System.debug('count value is : ' + sum); 
// // 7. Create a List of 10 String with your own values
// //    - create a Integer variable called randomIndex
// //    - assign the value to random Integer between (between 0-9)
// //    - use above index to print out the value at that index
// // List<String> strList = new List<String>{'item1','item2','item3','item4','item5','item6','item7','item8','item9', 'item10'};
// // Integer randomIndex=(math.random()*9).intValue();
// // System.debug('strList.get(randomIndex) value is : ' + strList.get(randomIndex)); 



// // 8. Write an Apex code that create List of 10 Integers
// //    - create a variable called largestValue and assign it to first item in the list
// //    - use for each loop to loop through each item
// //    - inside the loop re-assign largestValue to 
// //      - the result of Math.max(largestValue, each)
// //    - print out largestValue outside the loop
// //    - and that's how we can get max values in List of Integers
// //    - try to change the values of List item and run again
// // List<Integer> numberList = new List<Integer>{82,89,0077,82,69,54,78,36,59,44};
// // Integer largestValue=numberList.get(0);
// // for(integer each:numberList){
// //     largestValue=math.max(largestValue,each);
// // }
// // System.debug('largestValue value is : ' + largestValue); 



// // 9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
// //    - create a variable called smallestValue and assign it to first item in the list
// //    - use for each loop to loop through each item
// //    - inside the loop re-assin smallestValue to 
// //      - the result of Math.min(smallestValue, each)
// //    - print out smallestValue outside the loop
// //    - and that's how we can get min values in List of Integers
// //    - try to change the values of List item and run again 
// // List<Integer> numberList = new List<Integer>{82,89,0077,82,69,54,78,36,5,44};

// // Integer smallestValue= numberList.get(0);
// // for(Integer each: numberList){
// //     smallestValue=math.min(smallestValue,each);
// // }
// // System.debug('smallestValue value is : ' + smallestValue); 
// // 10. Write an Apex code that create a role List of 10 String 
// //    - join each item by space and store it into a String variable joined text 
// //      - and print it out
// //    - loop through the list 
// //      - print out each item along with character count in each item
// //      - in this format : 'admin has 5 characters'

// //    - loop through the list 
// //      - if it contains('dev') print out the items in UPPERCASE
// //      - if it contains('admin') print out the items removing the word admin : str.remove('admin')

// List<String> roleLst = new List<String>{'admin','dev','admin1','admin2','admin3','market','dev2','dev3','dev4','div5'};
// String joined= string.join(roleLst, ' ');
// System.debug('joined value is : ' + joined); 
// for(String each:roleLst){
//    Integer eachCar=each.length();
//     System.debug('each + each.length() value is : ' + each   +   each.length()); 


// }

// for(String each: roleLst){
//     if(each.contains('dev')){
//         System.debug('each.toUpperCase() value is : ' + each.toUpperCase()); 
//     }else if(each.contains('admin')){
//         System.debug('each.remove value is : ' + each.remove('admin')); 
//     }
// }


//      for (String each : roles){
//         if(each.contains('dev')){
//             System.debug (each.toUpperCase());
//         } else if(each.contains('admin')){
//             System.debug(each.remove('admin'));
//         }
//      }
     