

 // Create a List of Decimal and add 5 values in it 

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers
 Decimal sum = 0 ; 

 for(Decimal eachPrice  : prices){
    //sum = sum + eachPrice ; 
    sum += eachPrice ; 
 }

 System.debug('Sum is ' + sum); 

/**
Create a list of Integer with 8 items 
print out the count of items in this list 
Iterate over the list (use loop to go through each and every item)
print out only if the number is greater than 5
 */
 List<Integer> shoeSizeList = new List<Integer>{4,7,9,2,7,8,12,1} ; 

 System.debug('Item size is ' +  shoeSizeList.size()   ); 


 for(Integer eachSize : shoeSizeList){

    if(eachSize > 5){ 
        System.debug(eachSize) ; 
    }

 }
 // output 7  9  7  8  12 
 
 // get the sum of shoe sizes that meet above criteria


// get the sum of shoe sizes only if the number is greater than 5

 Integer sum = 0 ; 

 for( Integer eachSize  : shoeSizeList ){
     // only add the size to sum if it is greater than 5
     if(eachSize > 5) {
        sum += eachSize ; 
     }
 
 }

 System.debug('Sum of sizes greater than 5 :  ' + sum) ; 

 
