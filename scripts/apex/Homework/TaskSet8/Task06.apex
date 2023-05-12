// / 6. Inspired by above code, 
//    - Write an Apex code that 
//      - store 10 random Integer values between 1-100 into a List of Integer
//    - print out the value 
//    - get the sum of the numbers 
//    - get the average of the numbers


List<Integer> newList=new List<Integer>();

for(Integer i=0; i<100;i+=10){
Double randomDbl= Math.random()*100;
Integer randomInt=randomDbl.intValue();
newList.add(randomInt);
System.debug('randomInt value is : ' + randomInt); 


}
System.debug('newList value is : ' + newList); 


Integer count=0;
Integer sum=0;
Integer average=0;
for(Integer each:newList){
    sum+=each;
    count++;
    average=sum/count;
}
System.debug('sum value is : ' + sum); 
System.debug('count value is : ' + count); 
System.debug('average value is : ' + average); 