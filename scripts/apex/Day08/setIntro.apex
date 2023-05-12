// Set<DataType> yourVariablename=new Set<DataType>(item1,item2...);
 Set<Integer> targets = new  Set<Integer>();

 targets.add(100);
 targets.add(100);
 targets.add(200);
 targets.add(400);
 targets.add(200);
 targets.add(300);

 System.debug(targets);
 System.debug('count of items' + targets.size());

 Set <String> letters = new  Set <String> {'A', 'A', 'A','B', 'C', 'C', 'B', 'A','C', 'D'};
 System.debug (letters);
 System.debug (letters.size());

 for (String eachLetter:letters){
        System.debug (eachLetter);

 }