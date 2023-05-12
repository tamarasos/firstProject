// Write a program that store 10 random Decimal numbers in List of Decimal
//    print out the size of the list 
//    print out the sum of all numbers
//    print out the average of all numbers 
//    now try to go back to the code where you added elements , add more items into the list and run your program again to see if it works. 

   List<Decimal> prices =new List<DEcimal> {1.55,5.99,5.88,3.66,8.44,6.88,7.55,9.88,8.99,6.44};
   
  prices.add(5.77);
   prices.add(8.77);
Integer count = prices.size();
  
  System.debug(count);
   Decimal sum=0;
    for (Decimal eachNumber: prices){

     sum+=eachNumber;
    
   }
   System.debug(count);

   Decimal average =sum/count;
//    for (Decimal eachNumber: randomNumbers){
//         average=(sum+=eachNumber)/randomNumbers.size();

//    }

   System.debug (average);
   

//    List<Decimal> prices 
//         = new List<Decimal>{1.29,2.9,5.7,6.7,4.3,7.8,3.3,6.9,8.8,2.2,4.5};

// //    print out the size of the list 
// Integer priceCount = prices.size() ; 
// System.debug('price count in the list is ' + priceCount ) ; 
// //    print out the average of all numbers 
// //   average =  sum / count of items 

// Decimal average =  sum / priceCount ; 
// System.debug('The average price is ' + average);