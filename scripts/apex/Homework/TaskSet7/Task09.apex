// Write an Apex code that create List or Array of 8 String values
//    - store the the index of 2 items in the middle into 2 variables mid1, mid2
//    - now imagine you unknown (even) number of items in the list and find out a way to dynamically 
// find the index of item in the middle 
//      - if you have 8 items : number 4 and 6 items are in the middle
//      - if you have 18 items : number 8 and 9 items are in the middle and so on
//      - no loop needed here
//    - print out the value of items in the middle

List<String> names=new List<String> {'peter','ana','maria','matt','sara','linda','sean','peter'};

Integer mid1=names.indexOf(names.get((names.size()-1)/2));

Integer mid2=names.indexOf(names.get((names.size())/2));
System.debug(mid1);
System.debug(mid2);

System.debug(names.get(mid1) );
System.debug(names.get(mid2) );


// you can do it like this also

// List <String> names=new List<String> {'ana','mila','para','laza','mika', 'vika','lika','bika'};

// Integer mid1= names.size()/2;
// Integer mid2= names.size()/2-1;
// System.debug('mid1 value is : ' +names.get( mid1)); 

