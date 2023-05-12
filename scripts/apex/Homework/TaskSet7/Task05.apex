//  Write an Apex code that create List or Array of 5 Integer values. 
//    - double the value of each item 
//    - for example {1,4,6,4,6} => {2,8,12,8,12}

List<Integer> numberList = new List<Integer>{81,078,88,94,63};

List<Integer> numberList2 = new List<Integer>();
for(Integer i=0;i<numberList.size();i++){
    numberList2.add(numberList.get(i)*2);
    // numberList(i)+=2;    you can do like this also
}
System.debug(numberList2);



Or



for(Integer each:numberList){
    each=each*2;
    numberList2.add(each);
}
System.debug('numberList2 value is : ' + numberList2); 