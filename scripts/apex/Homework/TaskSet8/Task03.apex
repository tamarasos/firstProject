// 3. Write an Apex code that store list of 10 Integers 
//    - print out all odd numbers
//    - get the count of the odd numbers and print it out
//    - get the sum of the odd numbers and print it out 

List<Integer> numberList = new List<Integer>{55,81,12,29,13,58,14,97,45,36};


Integer sum=0;
Integer count=0;
for(Integer each: numberList){
    if(math.mod(each, 2)==1){

        System.debug(each);
        count++;
        sum+=each;
    }
}

System.debug('Count value is : ' + Count); 
System.debug('sum value is : ' + sum); 