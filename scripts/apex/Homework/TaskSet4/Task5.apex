// Create a List of 10 names into List of String with some duplicate value 
//    find out how many unique names showed up in the list using below approach
//    1. create an empty Set of String 
//    2. Iterate over names List using for each loop
//    3. use add method of Set to add each items into Set
//    4. outside the loop print out the size of set

 List<String> duplicateNames= new List<String> {'Marija', 'Marija', 'Natasa', 'Ogi', 'Ana', 'Ana', 'Ika', 'Tea', 'Joca', 'Joca'};

 Set<String>names= new Set<String>();

 System.debug(names);

 for(String eachName:duplicateNames){
 names.add(eachName);
   
 }
 System.debug(names.size());

 System.debug (names);

//  List<String> namesWithSomeDuplicateValue = new List<String> {
//     'Jim',
//     'James',
//     'Jameson',
//     'Jameson',
//     'Judie',
//     'Jenny',
//     'Jenny',
//     'Juma',
//     'Jessy',
//     'Jessica'
//  };

//  Set<String> noDuplicates = new Set<String> ();
//  for(String jNames :  namesWithSomeDuplicateValue){
//     noDuplicates.add(jNames);
//  }
//  System.debug('The size of the noDuplicates String is ' + noDuplicates.size());