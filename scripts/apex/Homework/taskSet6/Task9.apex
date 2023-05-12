//  Create an Boolean Array with 10 elements and count the the number of true value

 Boolean[] myList = new Boolean[]{true, false, false, true, true, true, true, false, true, false};
 System.debug(myList);

Integer count=0;
for(Integer i=0;i<myList.size();i++){

    Boolean each=myList.get(i);
    if(each==true){
        count++;
    }
}
  System.debug(count);
