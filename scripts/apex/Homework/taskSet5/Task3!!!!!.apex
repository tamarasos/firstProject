
// Write a program that store List of Integer with 10 items and try to get the sum of values,  
break out of the loop if the sum is greater than 100. 

  List<Integer> valuesList= new List<Integer>{1,2,3,4,5,6,7,8,9,100};
   Integer sum = 0;
   for(Integer eachValue : valuesList){
     sum+=eachValue;

    if(sum>100){
       
   
        break;
  
    
                
    } 

   }

             System.debug(sum);     


             
List<Integer> numberList = new List<Integer>{81,15,18,13,16};

Integer sum=0;

for(Integer i=0; i< numberList.size();i++){
    Integer each=numberList.get(i);
    sum+=each;
    if(sum>100){
        break;
    }
}
  System.debug(sum);

