// List<Decimal> prices = new List<Decimal> {9.99,2.65,3.14,5.22,9.55,6.55};

// // for ( Decimal eachPrice  :  prices ){
// //     System.debug('price is ' + eachPrice);
// // }System.debug(prices.size());
// // Create a List of Decimal and add 5 values in it 

// // optionally , create a variable outside of your loop called sum 
// // then use your for each loop to get the sum of all decimal numbers
//  Decimal sum = 0 ; 

//  for(Decimal eachPrice  : prices){
//     //sum = sum + eachPrice ; 
//     sum += eachPrice ; 
//  }

//  System.debug('Sum is ' + sum);

List <Integer> shoeSizeList = new List <Integer> {4,7,9,2,8,7,8,12};

System.debug (shoeSizeList.size());


for (Integer eachSize:shoeSizeList){
if (eachSize>5){
    
    System.debug ('shoe size '+ eachSize);
  
    }
}

Integer sum = 0;

for ( Integer eachSize  : shoeSizeList) {
    
    if (eachSize>5){
    sum+=eachSize ;
}
}

System.debug(sum);

Integer count =0;


for(Integer each:shoeSizeList){

if (each >5) {
count++;
}

}
System.debug (count);