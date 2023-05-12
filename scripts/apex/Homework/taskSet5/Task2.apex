// Write a program that store List of long with 10 items with positive and negative numbers and print out
//  all positive values using for loop try using the continue instead.

List<Long> numList = new List<Long> { 10,-20,30,40,50,-60,-70,-80,90,100};
for(Long eachNum : numList){

    if(eachNum<0){
continue;
    }
    System.debug(eachNum);
}