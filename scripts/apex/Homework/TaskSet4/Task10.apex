// Write a program that takes a list of integers that represent the amounts of money spent by a set of users, 
// and calculates the number of users who spent more than a certain amount (like 10000) of money.
// in another word, create a list of Integer and get the count of numbers that over 10000 

List<Integer> moneySpentbyUsers = new List<Integer>{150000,58888,155,25555,1456,888};
Integer count=0;
for(Integer eachUser:moneySpentbyUsers ){
    if(eachUser>10000){
        count++;
    }
   
}
 System.debug(count);