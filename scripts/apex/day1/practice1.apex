// //Create a program to write the even numbers from 10 to 20
// //both included, except 16, in 3 different ways:

// /Incrementing 2 in each step (use "continue" to skip 16)

// for(Integer i=10; i<=20; i+=2){
//     if(i==16){
//         continue;
        
//     }
//     System.debug(i);
// }

// for(Integer i=10; i<=20; i+=2){
//     if(Math.mod(i,2)==0){
//         if(i==16)
//         continue;
//         System.debug('i value is :' +i);
//     }

//     // /With an endless loop (using "break" & "continue")

//     for(Integer i=10;  ;  i+=2){

//         if(i==16)
//        continue;
//        if (i>20)
//        break;
//        System.debug(i);


//     }

    //write a program that can multiply each number by 2
//ex: list = [1,2,3,4,5];
 List<Integer> nums=new List <Integer> {1,2,3,4,5};
for(Integer i=0; i<nums.size();i++){
 nums[i]*=2;

}
System.debug(nums);

for(Integer each:nums){
        each*=2;

}
System.debug(nums);


//find the factorial of any given number
//5!=54321
//4!=432*1

Integer num=5;

Integer factorial=1;
for(Integer i; i<=num; i++){
    Factorial*=i;
}
System.debug(factorial);