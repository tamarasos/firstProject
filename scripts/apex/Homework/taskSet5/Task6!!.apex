// Write a program that create List of Integer with 10 items 
//    get the count of the items more than 5 (try for loop and for each loop)
//     and print out at the end 

List<Integer> itemsList=new List<Integer> {5,15,25,88,14,2,23,999,25,87};
Integer count= 0;
for(Integer each: itemsList){
    if(each>5){
      count++;
    }
 
} System.debug(count);


Integer count=0;
for(Integer i=0; i<numberList.size();i++){
    Integer each=numberList.get(i);
    if(each>5){
        count++;
    }
    
}
System.debug(count);