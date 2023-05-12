// Write an Apex code that create List or Array of 10 Integer values. 
//    - remove duplicate and print it out 
//    - print out the unique item count and difference between total list item count

// List<Integer> numberList = new List<Integer>{11,49,048,84,88, 28,58,88,88,58};
// Set<Integer> numberSet = new Set<Integer>(numberList);

// System.debug('numberList value is : ' + numberList); 
// System.debug('numberSet value is : ' + numberSet); 
// System.debug('numberList.size()-numberSet.size() value is : ' + (numberList.size()-numberSet.size())); 
// Integer count=0;
// for(Integer each:numberSet){
//     count++;
    
// }
// System.debug('numberSet value is : ' + count); 
// 2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
//    - Store last 3 items into Integer Array
//    - print out the Integer Array

// List<Integer> numberList = new List<Integer>{93,65,61,52,79,88,15,47,96,25};
// Integer[] numArray = new Integer[3];
// numArray[0]=numberList.get(numberList.size()-1);
// numArray[1]=numberList.get(numberList.size()-2);
// numArray[2]=numberList.get(numberList.size()-3);
// System.debug('numArray value is : ' + numArray); 



// 3. Write an Apex code that create List or Array of 10 Integer values. 
//    - create another List or Array and
//    - store the items in reverse order
//    - print it out 

// List<Integer> numberList = new List<Integer>{37,065,10,20,47,58,23,45,69,87};
// List<Integer> newList= new List<Integer> ();
// for(integer i=numberList.size()-1; i>=0; i--){
// newList.add(numberList.get(i));
// }
// System.debug('newList value is : ' + newList); 
// 4. Write an Apex code that create List or Array of 10 String values
//    - create a empty Set of String 
//    - store all the string that is not equal to admin or developer in it
//    - print out the size and items in loop 

// List<String> names=new List<String> {'admin','developer','sdet','ba','architect','marketing','cloud','security','admin','admin2'};
// Set<String> names2 = new Set<String>();

// for(String each: names){
//     if(each!='admin' && each!='developer'){
//         names2.add(each);
//     }
// }
// System.debug(names2);
// System.debug(names2.size());



// 5. Write an Apex code that create List or Array of 5 Integer values. 
//    - double the value of each item 
//    - for example {1,4,6,4,6} => {2,8,12,8,12}

// List<Integer> numberList = new List<Integer>{81,078,88,94,63};

// List<Integer> numberList2 = new List<Integer>();
// // for(Integer i=0;i<numberList.size();i++){
//     numberList2.add(numberList.get(i)*2);
//     // numberList(i)+=2;    you can do like this also
// }
// System.debug(numberList2);

// for(Integer each:numberList){
//     each=each*2;
//     numberList2.add(each);
// }
// System.debug('numberList2 value is : ' + numberList2); 
// 6. Write an Apex code that create List or Array of 5 String values
//    - add the word sf+index at the end of each element
//    - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
//    - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}

// List<String> names=new List<String> {'admin','developer','sdet','ba','architect','marketing','cloud','security','admin','admin2'};

// for(Integer i=0; i<=names.size()-1; i++){
//     String each= names.get(i);
//     each=each+'sf'+(i+1);
//     names.set(i, each);
// }
// System.debug('names value is : ' + names); 
// 7. Write an Apex code that create List or Array of 5 String values
//    - Create a String variable called joinedText
//    - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
//    - Example : Your list {'This','is','The','Way','Student'}
//      - value of joinedText 'This-is-The-Way-Student'

//  List<String> names=new List<String> {'admin','developer','sdet','ba','architect','admin2'};
//  String joinedText= string.join(names, '-');

// System.debug('joinedText value is : ' + joinedText); 

// 8. Write an Apex code that create List or Array of 7 String values
//    - store the the index of item in the middle in to variable mid1
//    - now imagine you unknown (odd) number of items in the list and find out a way to dynamically find the index of item in the middle 
//      - if you have 7 items : number 4 item is in the middle
//      - if you have 17 items : number 9 item is in the middle and so on
//      - no loop needed here
//    - print out the value of item in the middle

//  List<String> names=new List<String> {'admin','developer','sdet','ba','architect','admin2', 'bla'};
//  Integer mid= names.size()/2;
//  System.debug('myVar value is : ' + mid); 

// 9. Write an Apex code that create List or Array of 8 String values
//    - store the the index of 2 items in the middle into 2 variables mid1, mid2
//    - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
//      - if you have 8 items : number 4 and 5 items are in the middle
//      - if you have 18 items : number 8 and 9 items are in the middle and so on
//      - no loop needed here
//    - print out the value of items in the middle
// List<String> names=new List<String> {'peter','ana','maria','matt','sara','linda','sean','peter'};

// Integer mid1=names.indexOf(names.get((names.size()-1)/2));

// Integer mid2=names.indexOf(names.get((names.size())/2));
// System.debug(mid1);
// System.debug(mid2);

// System.debug(names.get(mid1) );
// System.debug(names.get(mid2) );


// Day 12 Code
//  Extras at the end for this
// 10.  Write an Apex code that create 2 Set of Integer with 5 values
//    -  check if all items in set 2 exists in set 1
//    -  check if all items in set 1 exists in set 2
//       -  HINT : containsAll method
//    -  add all items in the set 1 into set 2
//    -  check if all items in set 2 exists in set 1
//    -  check if all items in set 1 exists in set 2
//    -  remove all items exists in set 2 from set 1
// //       -  HINT : removeAll method
// Set<Integer> set1 = new Set<Integer>{43,21,33,49,72};
// Set<Integer> set2 = new Set<Integer>{041,076,18,023,52};

// Boolean set1inSet2=set1.containsAll(set2);
// System.debug('set1inSet2 value is : ' + set1inSet2); 
// Boolean set2inSet1=set2.containsAll(set1);
// System.debug('myVar value is : ' + set2inSet1); 
// set2.addAll(set1);
// System.debug('set2 value is : ' + set2); 
// // Boolean set1inset2=set2.containsAll(set1);


// Set<Integer> numberSet1 = new Set<Integer>{11,22,89,54,42,42,47};
// Set<Integer> numberSet2 = new Set<Integer>{89,54,42,42,47};

// //    -  check if all items in set 2 exists in set 1
// System.debug('numberSet1.containsAll(numberSet2) value is : ' 
//                   + numberSet1.containsAll(numberSet2)); 
// //    -  check if all items in set 1 exists in set 2
// //       -  HINT : containsAll method
// System.debug('numberSet2.containsAll(numberSet1) value is : ' 
//                   + numberSet2.containsAll(numberSet1)); 
// //    -  add all items in the set 1 into set 2
// numberSet1.addAll(numberSet2);
// System.debug('numberSet1 value is : ' + numberSet1); 
// //    -  check if all items in set 2 exists in set 1
// System.debug('numberSet1.containsAll(numberSet2) value is : ' 
//                   + numberSet1.containsAll(numberSet2)); 
// //    -  check if all items in set 1 exists in set 2
// System.debug('numberSet2.containsAll(numberSet1) value is : ' 
//                   + numberSet2.containsAll(numberSet1)); 
// //    -  remove all items exists in set 2 from set 1
// //       -  HINT : removeAll method
// System.debug('numberSet1.removeAll(numberSet2) value is : ' + numberSet1.removeAll(numberSet2)); 
// System.debug('numberSet1 value is : ' + numberSet1); 




// 11.  Write an Apex code that create 2 Set of String with 5 values
//    - update set1 to only retain the elements exists in both set1 and set2
//       -  HINT : retainAll method
// Set<String> strSet = new Set<String>{'item1','item2','item3','item4','item5'};
// Set<String> strSet8 = new Set<String>{'item1','item27','item31','item4','item58'};
// strSet.retainAll(strSet8);
// System.debug('myVar value is : ' + strSet); 

// 12. Write an Apex code that create Set of 10 Integer
//    - create a variable called average 
//    - calculate the average  sum/item count and print it out
//    - Create empty List of Integer
//    - store only items above average in above Set
//    - removeAll items that below average from the Set 

// Set<Integer> numberSet = new Set<Integer>{82,82,66,79,16,54,78,99,36,77};

// Integer sum=0;
// for(Integer each:numberSet){
//     sum+=each;
// }

// System.debug('sum value is : ' + sum); 

// Decimal average=sum/numberSet.size();
// System.debug(' value is : ' +average ); 
// List<Integer> newList = new List<Integer>();
// for(Integer each:numberSet){
//     if(each>average){
//         newList.add(each);
//     }
// }
// System.debug('newList value is : ' + newList); 
// numberSet.retainAll(newList);
// System.debug('numberSet value is : ' + numberSet); 

// 13. Write an Apex code that create List of 10 Integer values as scoreList
//     - get the count of numbers less than 0 or greater than 100
//     - in separate loop, update the value of items as below
//       - if the Integer less than 0 update it to 0 
//       - if the Integer more than 100 update it to 100
//     - HINT : Array syntax is much simpler when it comes to update

List<Integer> numberList = new List<Integer>{010,081,0015,305,78,580,690,120,-32,45};

Integer count=0;
for(Integer each: numberList){
    if(each<0 || each>100){
        count++;
    }
}
System.debug('count value is : ' + count); 

for(Integer i=0; i<numberList.size(); i++){
    Integer each= numberList.get(i);
    if(each<0){
        numberList.set(numberList.indexOf(each),0);
    }else if(each>100){
        numberList.set(numberList.indexOf(each),100);
    }
}
System.debug('numberList value is : ' + numberList); 