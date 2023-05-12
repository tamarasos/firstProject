// Write an Apex code that create List or Array of 7 String values
//    - store the the index of item in the middle in to variable mid1
//    - now imagine you unknown (odd) number of items in the list and find out
//  a way to dynamically find the index of item in the middle 
//      - if you have 7 items : number 4 item is in the middle
//      - if you have 17 items : number 9 item is in the middle and so on
//      - no loop needed here
//    - print out the value of item in the middle
// List<String> names=new List<String> {'peter','ana','maria','mark','sara','linda','sean'};

List<String> names=new List<String> {'peter','ana','maria','mark','sara','linda','sean','peter','ana','maria','mark','sara','linda','sean','m','b','v'};

System.debug(names.size());
System.debug((names.size()-1)/2);
System.debug(names.get((names.size()-1)/2));

