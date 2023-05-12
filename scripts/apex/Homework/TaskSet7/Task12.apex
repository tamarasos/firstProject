// Write an Apex code that create Set of 10 Integer
//    - create a variable called average 
//    - calculate the average  sum/item count and print it out
//    - Create empty List of Integer
//    - store only items above average in above Set
//    - removeAll items that below average from the Set 

Set<Integer> nums=new Set<Integer> {22,44,58,69,45,77,32,14,56,78};

Integer average=0;
Integer sum=0;
Integer count=0;
for(Integer each: nums){
    sum+=each;
   count++;
   average=sum/count;
}
System.debug(sum); 
System.debug(count); 
System.debug(average); 


List<Integer> newList = new List<Integer>();
for(Integer each:nums){
    if(each<average){
       newList.add(each);
    }
}
System.debug('nl' + newList);
nums.removeAll(newList);

System.debug(nums);


Set<Integer> numberSet = new Set<Integer>{82,82,66,79,16,54,78,99,36,77};

Integer sum=0;
for(Integer each:numberSet){
    sum+=each;
}

System.debug('sum value is : ' + sum); 

Decimal average=sum/numberSet.size();
System.debug(' value is : ' +average ); 
List<Integer> newList = new List<Integer>();
for(Integer each:numberSet){
    if(each>average){
        newList.add(each);
    }
}
System.debug('newList value is : ' + newList); 
numberSet.retainAll(newList);
System.debug('numberSet value is : ' + numberSet); 



