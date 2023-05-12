// Write an Apex code that create List or Array of unknown numbers
// (more than 3) of Integer values.
//    - Store last 3 items into Integer Array
//    - print out the Integer Array

List<Integer> numberList = new List<Integer>{88,43,93,71,72};

Integer[] numList2 = new Integer[3];
numList2[0]=numberList.get(numberList.size()-1);
numList2[1]=numberList.get(numberList.size()-2);
numList2[2]=numberList.get(numberList.size()-3);
System.debug(numList2);

