//  Write a program than create List of Double with 10 elements 
//    print out the first value and last value of the list 
//    if first item and last item values are equal 
//    print end with what we started 
//    else print different beginning and ending 
//     HINT : No Loop Needed Here


// List<Double> dblList = new List<Double>{72.230d, 22.941d, 31.689d, 21.297d, 33.325d, 72.230d};
// System.debug('dblList.get(0) value is : ' + dblList.get(0)); 
// System.debug('dblList.get(dblList.size()-1) value is : ' + dblList.get(dblList.size()-1)); 

// if(dblList.get(0)==dblList.get(dblList.size()-1)){
//     System.debug('end with what we started'); 
// }else{
//     System.debug('different'); 
// }

// 2. Write a program that store List of long with 10 items with positive and negative numbers and print out all positive values using for 
// loop try using the continue instead.

// List<Long> longNumList = new List<Long>{093811L, 837506L, -010162L, -743158L, 015136L, 361421L};

// for(Long each: longNumList){
//     if(each<0){
    
//         continue;
       
//     }
//      System.debug('each value is : ' + each);
// }



// 3. Write a program that store List of Integer with 10 items and try to get the sum of values,  break out of the loop if the sum is greater than 100. 
// List<Integer> numberList = new List<Integer>{9,92,83,74,12,45,778,365,698,564};
// Integer sum=0;
// for(Integer each: numberList){
//     sum+=each;
//     if(sum>100){
//         break;
//     }
// }
// System.debug('sum value is : ' + sum); 

// 4. Write a program that store List of Double with 10 items 
//    break out of the loop if any number is between 50.5 and 99.99 
// List<Double> priceList = new List<Double>{76.728d,51.101d, 50.875d, 75.744d, 33.466d};

// for(Double each: priceList){
//     if(each>50.5 && each <99.9){
     
//         break;
 
//     }
//       System.debug (each); 
// }

// 5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )to print out all value for practice 

//     - continue from above
//      if the any ID match exactly '001xxxxxxxxxxxxxxx' 
//      then break out of the loop
// List<ID> accountIds = new List<ID>{'0018W0000251OK6QAA','0018W0000251OK6QAB','0018W0000251OK6QAC','0018W0000251OK6QAD'};

// for(Id each: accountIds){
//     if(each=='0018W0000251OK6QAC'){
//         break;
//     }
//     System.debug(each); 
// }
// 6. Write a program that create List of Integer with 10 items 
//    get the count of the items more than 5 (try for loop and for each loop)
//     and print out at the end 

// List<Integer> numberList = new List<Integer>{3,44,37,28,038};
// Integer count=0;
// for(Integer each: numberList){
//     if(each>5){
//      count++;
         
//     }
  
// }
//   System.debug('each value is : ' + count); 
// 7. Write a program that create List of Integer with 10 items 
//     get the count of the items more than 5 and 
//     break out of the loop if you found 2 @

// List<Integer> numberList = new List<Integer>{60,39,76,2,38};
// Integer count=0;
// for(Integer each: numberList){
//     if(each>5){
//         count++;
//     }else if(each==2){
//         break;
//     }
// }
// System.debug('count value is : ' + count); 
// 8. Write a program that create a list of strings and print the values that are not equal to "Salesforce", using a for loop and the continue keyword.
// List<String> names = new List<String>{'dev','salesforce','admin','developer'};
// for(String each: names){
//     if(each=='developer'){
//         continue;
//     }
//     System.debug('each value is : ' + each); 
// }


// 9. Write a program that create a list of strings and print the values that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.
// List<String> names = new List<String>{'dev','salesforce','admin','developer'};
// for(String each: names){
//     if(each=='developer' || each== 'admin'){
//         continue;
//     }
//     System.debug('each value is : ' + each); 
// }




// 10. Write a program that create a list of strings with 10 values and get the count of the items that are not equal to "Admin" or "Developer"
//  using a for loop and the continue keyword.
// List<String> names = new List<String>{'dev','salesforce','admin','developer'};
// Integer count=0;
// for(String each: names){
//     if(each=='developer' || each== 'admin'){
//         continue;
  
//     }
//           count++;
// }

// System.debug('each value is : ' + count); 