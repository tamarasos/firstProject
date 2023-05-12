// Write an Apex code that create List or Array of 10 Integer values. 
//    - create another List or Array and
//    - store the items in reverse order
//    - print it out 
List<Integer> numberList = new List<Integer>{51,81,65,80,43,55,78,69,41,50};


List<Integer> newList=new List<Integer> ();

for(Integer i=numberList.size()-1; i>=0; i--){
    newList.add(numberList.get(i));
}
System.debug(newList);



