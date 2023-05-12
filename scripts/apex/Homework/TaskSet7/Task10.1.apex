//   Write an Apex code that create 2 Set of Integer with 5 values
//    -  check if all items in set 2 exists in set 1
//    -  check if all items in set 1 exists in set 2
//       -  HINT : containsAll method
//    -  add all items in the set 1 into set 2
//    -  check if all items in set 2 exists in set 1
//    -  check if all items in set 1 exists in set 2
//    -  remove all items exists in set 2 from set 1
//       -  HINT : removeAll method

      Set<Integer> num1=new Set<Integer> {1,5,44,88,99};
        Set<Integer> num2=new Set<Integer> {11,15,144,818,919};
        System.debug(num1.containsAll(num2));
        System.debug(num2.containsAll(num1));
   

   num1.addAll(num2);
   System.debug(num1);
   num2.containsAll(num1);
   System.debug(  num2.containsAll(num1));
 System.debug(num1.containsAll(num2));

 num1.removeAll(num2);
 System.debug(num1);

 Set<Integer> numberSet1 = new Set<Integer>{11,22,89,54,42,42,47};
Set<Integer> numberSet2 = new Set<Integer>{89,54,42,42,47};

//    -  check if all items in set 2 exists in set 1
System.debug('numberSet1.containsAll(numberSet2) value is : ' 
                  + numberSet1.containsAll(numberSet2)); 
//    -  check if all items in set 1 exists in set 2
//       -  HINT : containsAll method
System.debug('numberSet2.containsAll(numberSet1) value is : ' 
                  + numberSet2.containsAll(numberSet1)); 
//    -  add all items in the set 1 into set 2
numberSet1.addAll(numberSet2);
System.debug('numberSet1 value is : ' + numberSet1); 
//    -  check if all items in set 2 exists in set 1
System.debug('numberSet1.containsAll(numberSet2) value is : ' 
                  + numberSet1.containsAll(numberSet2)); 
//    -  check if all items in set 1 exists in set 2
System.debug('numberSet2.containsAll(numberSet1) value is : ' 
                  + numberSet2.containsAll(numberSet1)); 
//    -  remove all items exists in set 2 from set 1
//       -  HINT : removeAll method
System.debug('numberSet1.removeAll(numberSet2) value is : ' + numberSet1.removeAll(numberSet2)); 
System.debug('numberSet1 value is : ' + numberSet1); 


