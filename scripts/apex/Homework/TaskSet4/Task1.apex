// Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
// (try out the same with while loop and do while loop as practice)

// practice List using similar approach 
  Integer sum =0;
for(Integer count = 1; count<=100; count+=2){
        sum = sum+count;
}
System.debug (sum);


Integer sumOfOdd= 0;

Integer i=1;
while (i<=100){
  sumOfOdd+=i;
  i+=2;
}
System.debug(sumOfOdd);