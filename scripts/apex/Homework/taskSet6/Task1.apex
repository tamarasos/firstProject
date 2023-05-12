// Write an Apex code to create an empty List of Strings 
// and add 3 names to it using add() method. then insert 3 more items at index number 1
//  - print them out using both for loop or for each loop

List<String> newList= new List<String> ();
newList.add('joca');
newList.add('natasa');
newList.add('mirko');

newList.add(1,'biljana');
newList.add(1,'ogi');
newList.add(1,'tamara');

for(Integer index=0; index<newList.size(); index++){
   
}
 System.debug(newList);

 for(String each: newList){

 }
  System.debug(newList);