// Create a program that take some item from One List to Another according to the condition 
//   1. Create List of Integer with 9 elements|items 
//   2. Create another empty List of Integer 
//   3. Iterate over the first List using for each loop 
//     - check if the number is between 5-10 
//       - if so add this number to second list using secondList.add(itemHere) ; 

//   4. Print out the first List 
//   5. Print out the second List and it's size



List<Integer> numberOfBooks = new List<Integer> {5,7,9,11,22,35,6,88,5};
System.debug(numberOfBooks);

List<Integer> numberOfPens = new List<Integer> ();
for(Integer eachBook: numberOfBooks ){
         if(eachBook>5 && eachBook<10){
        numberOfPens.add(eachBook);
    }
}

System.debug('number of pens' +numberOfPens );
System.debug (numberOfPens.size());

