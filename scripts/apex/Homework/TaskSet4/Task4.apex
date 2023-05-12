// Write a program that store 10 Long(data type) values into List of Long 
//    (it should be combination of positive and negative numbers) 

//    print out the sum of positive numbers 
//    print out the count of positive numbers 
//    print out the count of negative numbers 

List<Long> longNumber = new List<Long> {11,15,-5,17,-11,-22,15,33,88,55};
Long sum =0;
for(Long eachNumber: longNumber){
    if(eachNumber>0){
       sum+=eachNumber;
       
        
    }
}
System.debug(sum);
Long count=0;
 for(Long eachNumber: longNumber){
         if(eachNumber>0){
            count++;
        }


 }
System.debug(count);

for(Long eachNumber: longNumber){
        if(eachNumber<0){
            count++;
        }
}

System.debug(count);