//  Write a program that create a list of strings and print the values
//   that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.

//   List<String> newList= new List<String> {'admin', 'developer','arhitect', 'ba', 'marketing'};
// //   System.debug(newList);

//   for(String each: newList){

//     if(each=='admin' || each=='developer'){
//         continue;
       
//     }
//      System.debug(each);
//   }


 List<String> newList= new List<String> {'admin', 'developer','arhitect', 'ba', 'marketing'};


  for(Integer i =0; i<newList.size(); i++){

    String each= newList.get(i);
    if(each=='admin' || each=='developer'){
        continue;
    }
    System.debug(each);
  }