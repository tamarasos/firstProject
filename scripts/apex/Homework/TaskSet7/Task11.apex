//  Write an Apex code that create 2 Set of String with 5 values
//    - update set1 to only retain the elements exists in both set1 and set2
//       -  HINT : retainAll method

Set<String> set1=new Set<String>{'marko','pera','laza','mila','mika'};


Set<String> set2=new Set<String>{'iva','mara','sara','sima','mima'};


set1.retainAll(set2);
System.debug(set1); 