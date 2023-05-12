// Write a program that store the even numbers from 1 to 20 into List of Integer

//   then write an apex code to get the sum of all items in the list. 

 List<Integer> evenNumbers = new List<Integer> {2,4,6,8,10,12,14,16,18,20};

 Integer sum= 0;
 for(Integer eachNumber:evenNumbers){
 sum+=eachNumber ;

 }
 System.debug(sum);
