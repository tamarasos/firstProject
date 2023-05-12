// 9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
//    - create a variable called smallestValue and assign it to first item in the list
//    - use for each loop to loop through each item
//    - inside the loop re-assin smallestValue to 
//      - the result of Math.min(smallestValue, each)
//    - print out smallestValue outside the loop
//    - and that's how we can get min values in List of Integers
//    - try to change the values of List item and run again 

List <Integer> numbers = new List <Integer> { 10,20,30,40,50,60,5,80,90,100};
   
   Integer smallestValue = numbers.get(0);
    for ( Integer each : numbers){
    smallestValue = Math.min(smallestValue, each);
   }

   System.debug(smallestValue); 

