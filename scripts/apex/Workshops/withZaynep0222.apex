// // // List<Integer> list1=new List<Integer>{2,15,88,12,12,39,45,74,9,8};
// // // Set<Integer> listSet=new Set<Integer> (list1);
// // // System.debug('listSet value is : ' + listSet); 

// // // System.debug('(list1.size()-listSet.size()) value is : ' + (list1.size()-listSet.size())); 

// // // Integer count=0;
// // // for(Integer each:listSet){
// // //     count++;
// // // }
// // // System.debug('count value is : ' + count); 





// // // 7. Create a List of 10 String with your own values
// // //    - create a Integer variable called randomIndex
// // //    - assign the value to random Integer between (between 0-9)
// // //    - use above index to print out the value at that index


// // List<String> names=new List<String> {'ana','pera','laza','mara','mika','lika','joca','skljoca'};
// // // Integer randomIndex =names.indexOf('pera');
// // // System.debug('randomIndex value is : ' + names.get(randomIndex)); 

// // Integer randomIndex= (Math.random()*10).intValue();
// // System.debug('randomIndex value is : ' + randomIndex); 

// //  Write an Apex code that create List or Array of 5 String values
// // //    - Create a String variable called joinedText
// // //    - Loop through all the items and append one item after another into
// //  joinedText variable separated by hyfen(-) and last item should not have -
// //    - Example : Your list {'This','is','The','Way','Student'}
// //      - value of joinedText 'This-is-The-Way-Student'

// // List <String> names=new List<String> {'ana','mila','para','laza','mika'};
// // String joinedText= String.join(names,'-');
// // System.debug( joinedText); 

// // Write an Apex code that create List or Array of 8 String values
// //    - store the the index of 2 items in the middle into 2 variables mid1, mid2
// //    - now imagine you unknown (even) number of items in the list and find out a way to dynamically 
// // find the index of item in the middle 
// //      - if you have 8 items : number 4 and 6 items are in the middle
// //      - if you have 18 items : number 8 and 9 items are in the middle and so on
// //      - no loop needed here
// //    - print out the value of items in the middle


// List <String> names=new List<String> {'ana','mila','para','laza','mika', 'vika','lika','bika'};

// Integer mid1= names.size()/2;
// Integer mid2= names.size()/2-1;
// System.debug('mid1 value is : ' +names.get( mid1)); 


  String str1 = 'Hello world';
System.debug('str1 value is : ' + str1); 

System.debug('str1.indexOf(\'o\') value is : ' + str1.indexOf('o')); 


System.debug('str1.indexOf(\'wor\') value is : ' + str1.indexOf('wor')); 

System.debug('str1.indexOf(\'worX\') value is : ' + str1.indexOf('worX')); 
