

// String season= 'spring';

// if(season=='winter'){
// System.debug ('wear boots');
// }else if (season=='spring'){
//     System.debug('wear sneakers');
// }else if (season=='summer'){
//     System.debug('wear sandals');
// }else {
//        System.debug('wear loafers');
// }



// Integer place = 1;

// switch on season {
//     when 'winter' ('wear boots');
// }
// when 'spring'{
//     System.debug ('wear sneakers')



// }
/*
List<String> cars=new List<String> {'ford', 'toyota', 'bmw'};
System.debug (cars);
cars.add('audi');
cars.add('honda');
cars.set(1, 'tesla');
System.debug(cars);

Boolean isHonda = cars.contains('honda');
System.debug (isHonda);

cars.get(3);
System.debug(cars.get(3));

cars.clear();


System.debug(cars.isEmpty());

Set<Decimal>prices=new Set<Decimal>{2.11,5.11,8.44,9.22};
prices.add(2.99);
prices.add(2.99);
System.debug(prices);
*/

//
//    find out how many unique names showed up in the list using below approach
//    1. create an empty Set of String 
//    2. Iterate over names List using for each loop
//    3. use add method of Set to add each items into Set
//    4. outside the loop print out the size of set

// List<String> names = new List<String> {'joca', 'joca', 'maki','taki','laki','maki'};

// Set<String> noDuplicateSet=new Set<String>();

// for(String eachnameValue:names){
//     noDuplicateSet.add(eachnameValue);

// }
// System.debug (noDuplicateSet);
// System.debug(noDuplicateSet.size());

List<Integer> numList = new List<Integer>{7,12,15, 10, 17, 100, 4};

// loop through each and every item, when you find 10 , stop looping 

 for(Integer count=1; count<=10; count++){


if(count==5){
     System.debug(count);
continue;

}

System.debug(count);
 }


for (Integer count = 1; count <= 10; count++) {
  if (count == 5) {
    System.debug('skipping the rest in this iteration');
    continue;
  }

  System.debug('count value ' + count);
}
