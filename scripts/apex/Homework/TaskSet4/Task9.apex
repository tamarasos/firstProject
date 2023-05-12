// // Write a program that takes a list of strings that represent the names of account owners, 
// and counts the number of times each name appears in the list.

 List<String> ownerNames= new List<String>{'maki', 'maki', 'taki', 'laki', 'saki', 'laki'};
 Integer count = 0;
 for(String eachName:ownerNames){
 if (eachName=='taki'){
     count++;
 }
 
 }

 
 System.debug( 'taki' + count);
 

