// 8. Write an Apex code that create List of 10 Integers
//    - create a variable called largestValue and assign it to first item in the list
//    - use for each loop to loop through each item
//    - inside the loop re-assign largestValue to 
//      - the result of Math.max(largestValue, each)
//    - print out largestValue outside the loop
//    - and that's how we can get max values in List of Integers
//    - try to change the values of List item and run again



  List <Integer> numbers = new List <Integer> { 10,20,30,40,50,60,70,80,90,100};
   
   Integer largestValue = numbers.get(0);
    for ( Integer each : numbers){
    largestValue = Math.max(largestValue, each);
   }

   System.debug(largestValue); 