// 4. Given below Map  

   
   Map<Integer, String> romanNumerals = new Map<Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'
    };
    

//     - Create a new Map<String, Integer> 
//       - store the key into the value of above Map
//       - store the value into the key of above map
Map<String,Integer> nonromanNum= new Map<String,Integer>();
// Set<Integer> intList= romanNumerals.keySet() ;
// List<String> strList= romanNumerals.values();
// nonromanNum.put(romanNumerals.values(),romanNumerals.keySet() );
// System.debug('nonromanNum value is : ' + nonromanNum); 

for(Integer each :romanNumerals.keySet()){
  nonromanNum.put(romanNumerals.get(each), each);
}
System.debug('nonromanNum value is : ' + nonromanNum); 








