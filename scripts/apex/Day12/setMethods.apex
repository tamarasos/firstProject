/**
Set is a collection of unique elements 
It's a unordered collection meaning there is no index
order is not guaranteed 
 */

 Set<Integer> numberSet = new Set<Integer>();
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 

 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {10}

//methods

// size() 
System.debug('numberSet.size()  value is : ' + numberSet.size() ); 
//OUTPUT : numberSet.size()  value is : 1

// clear()   : delete all items in the Set 
 numberSet.clear(); 
 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {}

// isEmpty()  : return true if size is 0 , return false if not 
System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty() ); 
 //OUTPUT : numberSet.isEmpty() value is : true

numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {10, 20, 30}

// contains(valueToCheck)  // return true if item exist , false if not

System.debug('numberSet.contains(10)  value is : ' + numberSet.contains(10) ); //true
System.debug('numberSet.contains(15)  value is : ' + numberSet.contains(15) ); //false
 //OUTPUT : numberSet.contains(10)  value is : true
 //OUTPUT : numberSet.contains(15)  value is : false

// remove(valueToDelete)
 numberSet.remove(30); 
 System.debug('numberSet value is : ' + numberSet); 
  //OUTPUT : numberSet value is : {10, 20}

//   you can only use for each loop

for(Integer each : yourListOrSetVariable) {
    System.debug('Current value : ' + each);
}
    

Set<String> yourSetName = new Set<String>();
// yourSetName.add(YourValueHere); 

    List<Integer> numberList = new List<Integer>{10,10,20,20,20};
System.debug('numberList value is : ' + numberList); 
// creating a set by copying everything from the list
Set<Integer> numberSet = new Set<Integer>(numberList);
System.debug('numberSet value is : ' + numberSet);