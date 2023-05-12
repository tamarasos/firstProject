// Write an Apex code that create List or Array of 10 String values
//    - create a empty Set of String 
//    - store all the string that is not equal to admin or developer in it
//    - print out the size and items in loop 

List<String> names=new List<String> {'admin','developer','sdet','ba','architect','marketing','cloud','security','admin','admin2'};
Set<String> names2 = new Set<String>();

for(String each: names){
    if(each!='admin' && each!='developer'){
        names2.add(each);
    }
}
System.debug(names2);
System.debug(names2.size());


