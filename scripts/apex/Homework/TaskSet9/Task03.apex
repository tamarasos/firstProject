// 3. Create a List of 10 String
//    - get the count of String even character count
//    - print them out

// anagrams words contain the same letters in a different order
// for example : late , tale , teal

List <String> strList = new List <String> {'oneoneone' , 'ttttwo' , 'three' , ' foooour' , 'five' , 'sixsixsix' , 'seven' , 'nine' , 'ten' };

Integer count=0;

for(String each:strList){
  if(Math.mod(each.length(), 2)==0){
    count++;
   
  }


}
   System.debug('count value is : ' + count); 
