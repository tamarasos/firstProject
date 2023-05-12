// Map<String, String> employeeMap = new Map<String,String>();
//         employeeMap.put('Ddene', 'f');
//         employeeMap.put('Winfred', 'M');
//         employeeMap.put('Jereme', 'M');
//         employeeMap.put('Glad', 'F');
//         employeeMap.put('Desirae', 'F');
//         employeeMap.put('Kakalina', 'f');
//         employeeMap.put('Bertrando', 'M');
//         employeeMap.put('Ajay', 'f');
//         employeeMap.put('Brigitte', 'F');
//         employeeMap.put('Derk', 'm');
//         employeeMap.put('Orlando', 'M');
//         employeeMap.put('Selle', 'f');
//         employeeMap.put('Marika', 'F');

//         // update f to female and m to male

// //         for(String eachKey: employeeMap.keySet()){
// //             if(employeeMap.get(eachKey)=='F'){
// // employeeMap.put(eachKey,'Female');
// //             }else{
// //                 employeeMap.put(eachKey, 'Male');
// //             }
// //         }
// //         System.debug('employeeMap value is : ' + employeeMap); 

Map<String, Integer> map1 = new Map<String, Integer>();
map1.put('John', 123000);
map1.put('Antony', 100000);
map1.put('Jimmy', 115000);
map1.put('Jalil', 145000);
map1.put('James', 110000);
map1.put('Conor', 85000);
map1.put('Josh', 117000);
map1.put('Cory', 118000);
map1.put('Anderson',125000);
map1.put('Steven', 135000);

// //  1 who has the maximum and minimum salary?

// List <Integer> salaries =  map1.values();
// Integer max = salaries[0];
// Integer min = salaries[0];

// for(Integer each : map1.values() ) {
//     if(each < min)
//     min = each;

//     if(each > max)
//     max = each;
// }
//    System.debug('min value is : ' + min);  
//    System.debug('max value is : ' + max); 

//    for(String each : map1.keySet()) {
//     if(map1.get(each)==min)
    
//     System.debug(each+' gets the min salary: '+map1.get(each)); 
//     if(map1.get(each)==max)
//     System.debug(each+' gets the max salary: '+map1.get(each)); 


//    }


//Suppose you have a custom object called "Productc" which has two fields: 
// "Name" and "Pricec". You also have a Map<String, Decimal> called "priceMap" 
// that contains the names and prices of various products.

// Write an Apex code snippet to loop through the entries in the priceMap, 
// and for each entry, create a new Product__c record with the corresponding 
// name and price, and insert it into Salesforce.


// Map<String, Decimal> priceMap = new Map<String, Decimal> {'apple'=>50, 'orange'=>20, 'banana'=>66, 'walnut'=>87};
// System.debug('priceMap value is : ' + priceMap); 

// List <Product__c> proList = new List <Product__c>();
//  for(String each: priceMap.keySet()){
//     proList.add(new Product__c(Name=each, Price__c=priceMap.get(each)));
  
//  }
// System.debug('proList value is : ' + proList); 
// // priceMap value is : {apple=50, banana=66, orange=20, walnut=87}
// // proList value is : (Product__c:{Name=apple, Price__c=50}, Product__c:{Name=orange, Price__c=20}, Product__c:{Name=banana, Price__c=66}, Product__c:{Name=walnut, Price__c=87})


// List <Product__c> proList = new List <Product__c>();
//     for(String each : priceMap.keyset()) {
//         product__c pro = new product__c();
//         pro.name = each;
//         pro.price__c = priceMap.get(each);
//         proList.add(pro);
//     }
//     System.debug('proList value is : ' + proList); 
//     priceMap value is : {apple=50, banana=66, orange=20, walnut=87}
// proList value is : (Product__c:{Name=apple, Price__c=50}, Product__c:{Name=orange, Price__c=20}, Product__c:{Name=banana, Price__c=66}, Product__c:{Name=walnut, Price__c=87})


// Map<String,Decimal> productMap = new Map<String,Decimal>();
// productMap.put('Apple Macbook', 1500);
// productMap.put('Samsung S60', 700);
// productMap.put('apple Airpod', 300);
// productMap.put('Apple Iphone 13', 1000);
// productMap.put('Samsung Galaxy', 800);

// //You have a map of products and you should increase the prices by10%
// //if they include 'Apple'
// //print out the new priceMap

// Map<String,Decimal> newproductMap = new Map<String,Decimal>();
// for(String each: productMap.keySet()){
// if(each.containsIgnoreCase('Apple')    ){
//     Decimal price= productMap.get(each);
//     price=price+price*0.10;
//     newproductMap.put(each, price);
// }
// }
// System.debug('newproductMap value is : ' + newproductMap); 