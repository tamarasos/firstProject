// /*
// 1. Create a list of Decimal named 'cheapList' and add these 5 elements into the list. (2.75, 5.99, 8.25, 9.50, 9.99)
// 2. Create another list of Decimal named 'priceyList' and add these 6 elements into the list. (15.75, 5.99, 19.25, 25.50, 9.99, 7.50)
// 3. If any element in the 'priceyList' is less than 10, add that element into 'cheapList'.
// 4. Also, remove those elements (with the value of less than 10) from the 'priceyList'.
// 5. Finally, print out the elements in both lists and the size of the lists.
// */
// List <Decimal> cheapList = new List <Decimal> {2.75, 5.99, 8.25, 9.50, 9.99};

// List <Decimal> priceyList = new List <Decimal> {15.75, 5.99, 19.25, 25.50, 9.99, 7.50};

// List <Decimal> priceyList2 = new List <Decimal> ();

// for (Decimal eachPrice : priceyList ){
//     if (eachPrice < 10){
//         cheapList.add(eachPrice);
//     }else {
//         priceyList2.add(eachPrice);
//     }
// }

// System.debug('The elements in the cheaplist: ' + cheapList);
// System.debug('The elements in the priceyList2: ' + priceyList2);

// System.debug('The size of the cheapList: ' + cheapList.size());
// System.debug('The size of the priceyList2: ' + priceyList2.size());




/*1. Create a list of Integer named "orderNumbers".
  2. Add numbers between 1-20 into the list. 
  3. Check if the size of the list is 20 and print out the result as "true" or "false"
  4. Print out each number in the list as 'Order Number X' except 5, 10 and 15.
  */

List <Integer> orderNumbers = new List <Integer>();

for(Integer i = 1 ; i <=20 ; i++){
    orderNumbers.add(i);
}

System.debug('The numbers in the list: ' + orderNumbers);
Integer listSize = orderNumbers.size();
System.debug('The size of the list: ' + listSize);
System.debug('Is list size equals 20: ' + (listSize == 20));

//1st Solution
for (Integer eachNum :orderNumbers ){
    if (eachNum != 5 && eachNum != 10 && eachNum != 15 ){
        System.debug('Order Number ' + eachNum);
    }
}
System.debug('****************************');
//2st Solution
for (Integer eachNum :orderNumbers ){
    if (eachNum == 5 || eachNum == 10 || eachNum == 15 ){
        continue;   
    }
    System.debug('Order Number ' + eachNum);
}

System.debug('****************************');

List<Integer> doNotPrint = new List<Integer>{5,10,15};
for (Integer eachNum : orderNumbers){
    if (doNotPrint.contains(eachNum)){
        continue;
    }
    System.debug('Order Number ' + eachNum);
}


/*6. Find out how many unique names showed up in the list by creating a Set.
    a. Create an empty Set of String 
    b. Iterate over names List using for each loop
    c. use add method of Set to add each items into Set
    d. outside the loop print out the set and the size of the set*/

Set<String> accountNamesSet = new Set<String>();

for (String eachName : accountNames){
    accountNamesSet.add(eachName);
}

System.debug(accountNamesSet);
System.debug(accountNamesSet.size());

accountNamesSet.add('Disney');
System.debug(accountNamesSet.size());

accountNamesSet.remove('Sony');
System.debug(accountNamesSet.size());

accountNamesSet.clear();
System.debug('Is the accountNamesSet empty: ' + accountNamesSet.isEmpty());