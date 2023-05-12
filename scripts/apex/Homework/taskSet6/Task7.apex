// // Create an Array of 10 Doubles 
//  - use Array syntax to loop through each item 
//  - get the count of the number is between 10 and 20 or 40-50 
//  - get the sum of the numbers greater than 30

Double[] numbers = new Double[10];
numbers[0]=10;
numbers[1]=15;
numbers[2]=17;
numbers[3]=44;
numbers[4]=49;
numbers[5]=60;
numbers[6]=18;
numbers[7]=80;
numbers[8]=90;
numbers[9]=100;

// // 

Integer count=0;
for(Integer i=0; i<numbers.size(); i++){
    Double each=numbers.get(i);
    if(each>10 && each<20 || each<50 && each>40){
        count++;
    }
 
}
   System.debug(count);

// or like this 


 Integer count=0;
 for(Double each: numbers){

     if((each > 10 && each < 20) || (each > 40 && each <50)){


        count++;
     }
 }
 System.debug(count); 



 Double sum=0;
for(Double each:numbers){
    if(each>30){
        sum+=each;
    }
    
}

System.debug(sum);